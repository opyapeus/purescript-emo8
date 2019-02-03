module Emo8.Action.Sound where

import Prelude

import Control.Monad.Free (Free, liftF)
import Emo8.Data.Channel (Channel)
import Emo8.Data.Tone (Tone)
import Emo8.Types (Bpm, SoundId)

type Sound = Free SoundF

data SoundF n
    = Play Channel SoundId Tone Bpm n
    | Halt Channel n
    | HaltAll n

-- | Play sound with given tone and bpm.
play :: Channel -> SoundId -> Tone -> Bpm -> Sound Unit
play ch sId tone tempo = liftF $ Play ch sId tone tempo unit

-- | Halt sound.
halt :: Channel -> Sound Unit
halt ch = liftF $ Halt ch unit

-- | Halt all sound.
haltall :: Sound Unit
haltall = liftF $ HaltAll unit
