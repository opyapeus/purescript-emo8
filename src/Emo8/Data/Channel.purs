module Emo8.Data.Channel where

import Prelude

import Audio.WebAudio.AudioParam (setValue)
import Audio.WebAudio.BaseAudioContext (createGain, createOscillator, currentTime, destination)
import Audio.WebAudio.GainNode (gain)
import Audio.WebAudio.Oscillator (startOscillator)
import Audio.WebAudio.Types (AudioContext, GainNode, OscillatorNode, connect)
import Data.Foldable (for_)
import Data.Unfoldable (replicateA)
import Effect (Effect)
import Emo8.Constants (maxNoteSize)

data Channel
  = CH1
  | CH2

type ChannelSets =
  { set1 :: ChannelSet
  , set2 :: ChannelSet
  }

type ChannelSet =
  { osclNodes :: Array OscillatorNode
  , gainNode :: GainNode
  }

getChannelSet :: Channel -> ChannelSets -> ChannelSet
getChannelSet CH1 sets = sets.set1
getChannelSet CH2 sets = sets.set2

mkChannelSets :: AudioContext -> Effect ChannelSets
mkChannelSets ctx =
  { set1: _
  , set2: _
  }
  <$> mkChannelSet ctx
  <*> mkChannelSet ctx

mkChannelSet :: AudioContext -> Effect ChannelSet
mkChannelSet ctx =
  { osclNodes: _
  , gainNode: _
  }
  <$> (replicateA maxNoteSize <<< createOscillator) ctx
  <*> createGain ctx

setSoundNodes :: ChannelSets -> AudioContext -> Effect Unit
setSoundNodes sets ctx = do
  setSoundNode sets.set1 ctx
  setSoundNode sets.set2 ctx

setSoundNode :: ChannelSet-> AudioContext -> Effect Unit
setSoundNode set ctx = do
  for_ set.osclNodes \osc -> connect osc set.gainNode
  dest <- destination ctx
  connect set.gainNode dest

startSoundNodes :: ChannelSets -> AudioContext -> Effect Unit
startSoundNodes sets ctx = do
  startSoundNode sets.set1 ctx
  startSoundNode sets.set2 ctx

startSoundNode :: ChannelSet-> AudioContext -> Effect Unit
startSoundNode set ctx = do
  now <- currentTime ctx
  for_ set.osclNodes $ startOscillator now
  -- NOTE: initialize gain to prevent initial unwanted sound
  for_ set.osclNodes \osc -> do
    gainParam <- gain set.gainNode
    setValue 0.0 gainParam
