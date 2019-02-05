module Emo8.SoundUtil
  ( ChannelSets
  , ChannelSet
  , getChannelSet
  , mkChannelSets
  , prepareSound
  , setVol
  , cancelVol
  , setEfct
  , cancelEfct
  , setScale
  , unsetScale
  , cancelScale
  , resumeByUserGestureOnce
  ) where

import Prelude

import Audio.WebAudio.AudioParam (cancelScheduledValues, setTargetAtTime, setValue, setValueAtTime)
import Audio.WebAudio.BaseAudioContext (createGain, createOscillator, currentTime, destination, resume)
import Audio.WebAudio.GainNode (gain)
import Audio.WebAudio.Oscillator (detune, frequency, startOscillator)
import Audio.WebAudio.Types (AudioContext, GainNode, OscillatorNode, Seconds, connect)
import Data.Foldable (for_)
import Data.Maybe (Maybe(..))
import Data.Unfoldable (replicateA)
import Effect (Effect)
import Emo8.Constants (maxNoteSize)
import Emo8.Data.Audio (Efct, Vol, efctToDetune, noteToFreq, octaveToMult, volToGain)
import Emo8.Data.Channel (Channel(..), channels)
import Emo8.Data.KeyTouchInput (KeyTouchInput, anyKeyTouch)
import Emo8.Data.Tick (Scale)
import Signal (Signal, foldp)

type Frequency = Number

type ChannelSets =
  { set1 :: ChannelSet
  , set2 :: ChannelSet
  , set3 :: ChannelSet
  , set4 :: ChannelSet
  }

type ChannelSet =
  { osclNodes :: Array OscillatorNode
  , gainNode :: GainNode
  }

getChannelSet :: Channel -> ChannelSets -> ChannelSet
getChannelSet CH1 sets = sets.set1
getChannelSet CH2 sets = sets.set2
getChannelSet CH3 sets = sets.set3
getChannelSet CH4 sets = sets.set4

mkChannelSets :: AudioContext -> Effect ChannelSets
mkChannelSets ctx =
  { set1: _
  , set2: _
  , set3: _
  , set4: _
  }
  <$> mkChannelSet ctx
  <*> mkChannelSet ctx
  <*> mkChannelSet ctx
  <*> mkChannelSet ctx

mkChannelSet :: AudioContext -> Effect ChannelSet
mkChannelSet ctx =
  { osclNodes: _
  , gainNode: _
  }
  <$> (replicateA maxNoteSize <<< createOscillator) ctx
  <*> createGain ctx

prepareSound :: ChannelSets -> AudioContext -> Effect Unit
prepareSound sets ctx = do
  setSoundNodes sets ctx
  startSoundNodes sets ctx

setSoundNodes :: ChannelSets -> AudioContext -> Effect Unit
setSoundNodes sets ctx = for_ channels \ch -> setSoundNode (getChannelSet ch sets) ctx

setSoundNode :: ChannelSet-> AudioContext -> Effect Unit
setSoundNode set ctx = do
  for_ set.osclNodes \osc -> connect osc set.gainNode
  dest <- destination ctx
  connect set.gainNode dest

startSoundNodes :: ChannelSets -> AudioContext -> Effect Unit
startSoundNodes sets ctx = for_ channels \ch -> startSoundNode (getChannelSet ch sets) ctx

startSoundNode :: ChannelSet-> AudioContext -> Effect Unit
startSoundNode set ctx = do
  now <- currentTime ctx
  for_ set.osclNodes $ startOscillator now
  -- NOTE: initialize gain to prevent initial unwanted sound
  cancelVol now set.gainNode ctx

setVol :: Seconds -> Seconds -> GainNode -> Vol -> Effect Unit
setVol t itv gn vol = do
  gainParam <- gain gn
  void $ setTargetAtTime volume t decay gainParam
  where
    volume = volToGain vol
    -- NOTE: https://developer.mozilla.org/en-US/docs/Web/API/AudioParam/setTargetAtTime#Choosing_a_good_timeConstant
    -- Time since startTime: Value
    -- 1 * timeConstant: 63.2%
    -- n * timeConstant: 1 - e^n
    decay = itv / 2.0

cancelVol :: Seconds -> GainNode -> AudioContext -> Effect Unit
cancelVol now gn ctx = do
  gainParam <- gain gn
  void $ cancelScheduledValues now gainParam
  setValue 0.0 gainParam

setEfct :: Seconds -> OscillatorNode -> Efct -> Effect Unit
setEfct t on efct = do
  detParam <- detune on
  void $ setValueAtTime det t detParam
  where
    det = efctToDetune efct

cancelEfct :: Seconds -> OscillatorNode -> AudioContext -> Effect Unit
cancelEfct now on ctx = do
  detParam <- detune on
  void $ cancelScheduledValues now detParam
  setValue 0.0 detParam

unsetScale :: Seconds -> OscillatorNode -> Effect Unit
unsetScale t on = setFreq t on freq
    where freq = 0.0

setScale :: Seconds -> OscillatorNode -> Scale -> Effect Unit 
setScale t on scale = setFreq t on freq
    where freq = noteToFreq scale.note * octaveToMult scale.octave

setFreq :: Seconds -> OscillatorNode -> Frequency -> Effect Unit
setFreq t on freq = do
    freqParam <- frequency on
    void $ setValueAtTime freq t freqParam

cancelScale :: Seconds -> OscillatorNode -> AudioContext -> Effect Unit
cancelScale now on ctx = do
  freqParam <- frequency on
  void $ cancelScheduledValues now freqParam
  setValue 0.0 freqParam

-- NOTE: it must be resumed after a user gesture on the page
-- REVIEW: refactor
resumeByUserGestureOnce :: AudioContext -> Signal KeyTouchInput -> Signal (Effect Unit)
resumeByUserGestureOnce ctx sig =
  (\s -> case s of
    Just false -> pure unit
    _ -> resume ctx -- NOTE: resume Nothing case also for reliable activation
  ) <$> foldp upd Nothing sig
  where
    upd i Nothing = if anyKeyTouch i then Just true else Nothing
    upd _ (Just true) = Just false
    upd _ (Just false) = Just false
