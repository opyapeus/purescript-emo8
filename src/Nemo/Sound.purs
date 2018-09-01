module Nemo.Sound
    ( play
    , haltall
    ) where

import Prelude

import Audio.WebAudio.AudioParam (setValueAtTime)
import Audio.WebAudio.BaseAudioContext (createGain, createOscillator, currentTime, destination, resume, suspend)
import Audio.WebAudio.GainNode (gain)
import Audio.WebAudio.Oscillator (detune, frequency, startOscillator, stopOscillator)
import Audio.WebAudio.Types (GainNode, OscillatorNode, Seconds, connect)
import Data.Array (length, range, zip, (!!))
import Data.Int (toNumber)
import Data.Maybe (Maybe(..))
import Data.Traversable (for_)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Nemo.Data.Audio (efctToDetune, noteToFreq, octaveToMult, volToGain)
import Nemo.Data.Tone (Tone, setTone)
import Nemo.Types (AudioOp, Bpm, SoundId, Tick)

-- ENHANCE: more detail control.

-- | Play sound with given tone and bpm.
play :: SoundId -> Tone -> Bpm -> AudioOp
play sId tone tempo sctx =
    case sctx.soundData !! sId of
        Nothing -> pure unit -- NOTE: Prioritize simplicity
        Just ticks -> do
            resume sctx.ctx

            osclNode <- createOscillator sctx.ctx
            gainNode <- createGain sctx.ctx
            now <- currentTime sctx.ctx

            setTone tone osclNode sctx.ctx

            let len = length ticks
            let ts = range 0 $ len - 1
            let startTimes = map ((+) now <<< (*) interval <<< toNumber) ts
            -- NOTE: just created [now, now + interval, now + interval * 2, ..., now + interval * (len - 1)]
            let tickWithTime = zip startTimes ticks
            for_ tickWithTime $ \(Tuple startTime tick) -> prepSound startTime osclNode gainNode tick

            connect osclNode gainNode
            connect gainNode =<< destination sctx.ctx

            startOscillator now osclNode
            let endTime = now + interval * toNumber len
            stopOscillator endTime osclNode
            where
                interval = 60.0 / toNumber tempo

prepSound :: Seconds -> OscillatorNode -> GainNode -> Tick -> Effect Unit
prepSound t on gn tick = do
    let det = efctToDetune tick.efct
    let freq = noteToFreq tick.note * octaveToMult tick.octave
    let vol = volToGain tick.vol
    detParam <-  detune on
    freqParam <- frequency on
    gainParam <- gain gn
    void $ setValueAtTime det t detParam
    void $ setValueAtTime freq t freqParam
    void $ setValueAtTime vol t gainParam

-- | Halt all sound.
haltall :: AudioOp
haltall sctx =
    suspend sctx.ctx