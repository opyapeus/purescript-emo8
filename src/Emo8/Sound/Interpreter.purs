module Emo8.Sound.Interpreter where

import Prelude

import Audio.WebAudio.AudioParam (setTargetAtTime, setValueAtTime)
import Audio.WebAudio.BaseAudioContext (createGain, createOscillator, currentTime, destination, resume, suspend)
import Audio.WebAudio.GainNode (gain)
import Audio.WebAudio.Oscillator (detune, frequency, startOscillator, stopOscillator)
import Audio.WebAudio.Types (GainNode, OscillatorNode, Seconds, connect)
import Control.Monad.Free (foldFree)
import Data.Array (length, zip, (!!), (..))
import Data.Int (toNumber)
import Data.Maybe (Maybe(..))
import Data.Traversable (for_)
import Data.Tuple (Tuple(..))
import Data.Unfoldable (replicateA)
import Effect (Effect)
import Emo8.Constants (maxNoteSize)
import Emo8.Data.Audio (Efct, Vol, efctToDetune, noteToFreq, octaveToMult, volToGain)
import Emo8.Data.Tone (Tone, setTone)
import Emo8.Excepiton (providedSound)
import Emo8.Sound.Action (Sound, SoundF(..))
import Emo8.Types (Bpm, Scale, SoundContext, SoundId)

type AudioOp = SoundContext -> Effect Unit

type Frequency = Number

runSound :: forall a. SoundContext -> Sound a -> Effect a
runSound sctx = foldFree interpret
  where
    interpret :: SoundF ~> Effect
    interpret (HaltAll n) = const n <$> haltall sctx
    interpret (Play sId tone tempo n) = const n <$> play sId tone tempo sctx

play :: SoundId -> Tone -> Bpm -> AudioOp
play sId tone tempo sctx =
    providedSound sctx.soundData sId $
        \ticks -> do
            resume sctx.ctx

            osclNodes <- replicateA maxNoteSize $ createOscillator sctx.ctx
            gainNode <- createGain sctx.ctx
            now <- currentTime sctx.ctx

            for_ osclNodes $ \osc -> setTone tone osc sctx.ctx

            let len = length ticks
            let ts = 0 .. (len - 1)
            -- NOTE: just create [now, now + interval, now + interval * 2, ..., now + interval * (len - 1)]
            let startTimes = map ((+) now <<< (*) interval <<< toNumber) ts
            
            let tickWithTimes = zip startTimes ticks
            let oscWithIds = zip (0 .. (maxNoteSize - 1)) osclNodes
            
            for_ tickWithTimes $ \(Tuple startTime tick) ->
                for_ oscWithIds $ \(Tuple i osc) -> do
                    setVolEfct startTime interval osc gainNode tick.vol tick.efct
                    case tick.scales !! i of
                        Just scale -> setScale startTime osc scale
                        Nothing -> unsetScale startTime osc

            for_ osclNodes $ \osc -> connect osc gainNode
            connect gainNode =<< destination sctx.ctx

            for_ osclNodes $ startOscillator now
            let endTime = now + interval * toNumber len
            for_ osclNodes $ stopOscillator endTime
            where
                interval = 60.0 / toNumber tempo

setVolEfct :: Seconds -> Seconds -> OscillatorNode -> GainNode -> Vol -> Efct -> Effect Unit
setVolEfct t itv on gn vol efct = do
    detParam <- detune on
    gainParam <- gain gn
    _ <- setValueAtTime det t detParam
    _ <- setTargetAtTime volume t decay gainParam
    pure unit
    where
        det = efctToDetune efct
        volume = volToGain vol
        -- NOTE: https://developer.mozilla.org/en-US/docs/Web/API/AudioParam/setTargetAtTime#Choosing_a_good_timeConstant
        -- Time since startTime: Value
        -- 1 * timeConstant: 63.2%
        -- n * timeConstant: 1 - e^n
        decay = itv / 2.0

unsetScale :: Seconds -> OscillatorNode -> Effect Unit
unsetScale t on = setFreq t on freq
    where freq = 0.0

setScale :: Seconds -> OscillatorNode -> Scale -> Effect Unit 
setScale t on scale = setFreq t on freq
    where freq = noteToFreq scale.note * octaveToMult scale.octave
        
setFreq :: Seconds -> OscillatorNode -> Frequency -> Effect Unit
setFreq t on freq = do
    freqParam <- frequency on
    _ <- setValueAtTime freq t freqParam
    pure unit

haltall :: AudioOp
haltall sctx =
    suspend sctx.ctx