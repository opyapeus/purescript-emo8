module Emo8.Interpreter.Sound where

import Prelude

import Audio.WebAudio.BaseAudioContext (currentTime, resume)
import Control.Monad.Free (foldFree)
import Data.Array (length, zip, (!!), (..))
import Data.Int (toNumber)
import Data.Maybe (Maybe(..))
import Data.Traversable (for_)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Emo8.Action.Sound (Sound, SoundF(..))
import Emo8.Constants (maxNoteSize)
import Emo8.Data.Channel (Channel, channels)
import Emo8.Data.Tick (emptyTick)
import Emo8.Data.Tone (Tone, setTone)
import Emo8.Excepiton (providedSound)
import Emo8.SoundUtil (cancelEfct, cancelScale, cancelVol, getChannelSet, setEfct, setScale, setVol, unsetScale)
import Emo8.Types (Bpm, SoundContext, SoundId)

type AudioOp = SoundContext -> Effect Unit

runSound :: forall a. SoundContext -> Sound a -> Effect a
runSound sctx = foldFree interpret
  where
    interpret :: SoundF ~> Effect
    interpret (Play ch sId tone tempo n) = const n <$> play ch sId tone tempo sctx
    interpret (Halt ch n) = const n <$> halt ch sctx
    interpret (HaltAll n) = const n <$> haltall sctx

-- REVIEW: refactor
play :: Channel -> SoundId -> Tone -> Bpm -> AudioOp
play ch sId tone tempo sctx = do
    -- NOTE: clear present schedule
    halt ch sctx
    -- NOTE: maybe needed for first user interaction
    resume sctx.ctx
    providedSound sctx.soundData sId $
        \ticks' -> do
            let ticks = ticks' <> [emptyTick] -- NOTE: emptyTick for cutting last tick
                chSet = getChannelSet ch sctx.channelSets
                osclNodes = chSet.osclNodes
                gainNode = chSet.gainNode

            now <- currentTime sctx.ctx

            let len = length ticks
            let ts = 0 .. (len - 1)
            -- NOTE: just create [now, now + interval, now + interval * 2, ..., now + interval * (len - 1)]
            let startTimes = map ((+) now <<< (*) interval <<< toNumber) ts
            
            let tickWithTimes = zip startTimes ticks
            let oscWithIds = zip (0 .. (maxNoteSize - 1)) osclNodes

            for_ osclNodes $ \osc -> setTone tone osc sctx.ctx
            for_ tickWithTimes $ \(Tuple startTime tick) -> do
                setVol startTime interval gainNode tick.vol
                for_ oscWithIds $ \(Tuple i osc) -> do
                    setEfct startTime osc tick.efct
                    case tick.scales !! i of
                        Just scale -> setScale startTime osc scale
                        Nothing -> unsetScale startTime osc -- NOTE: to cut tick
    where
        interval = 60.0 / toNumber tempo

halt :: Channel -> AudioOp
halt ch sctx = do
    let chSet = getChannelSet ch sctx.channelSets
    now <- currentTime sctx.ctx
    cancelVol now chSet.gainNode sctx.ctx
    for_ chSet.osclNodes \osc -> do
        cancelEfct now osc sctx.ctx
        cancelScale now osc sctx.ctx

haltall :: AudioOp
haltall sctx = for_ channels \ch -> halt ch sctx
