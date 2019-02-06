module Emo8.Action.Draw where

import Prelude

import Control.Monad.Free (Free, liftF)
import Control.Monad.Gen (Size)
import Emo8.Data.Color (Color)
import Emo8.Data.Emoji (Emoji)
import Emo8.Types (Deg, MapId, X, Y)

type Draw = Free DrawF

data DrawF n
    = ClearScreen Color n
    | Emo Appearance Emoji Size X Y n
    | Emor Appearance Deg Emoji Size X Y n
    | Emap Appearance MapId Size X Y n

data Appearance = Normal | Mirrored

-- | Clear screen with given color.
cls :: Color -> Draw Unit
cls c = liftF $ ClearScreen c unit

-- | Draw emoji.
emo :: Emoji -> Size -> X -> Y -> Draw Unit
emo e size x y = liftF $ Emo Normal e size x y unit

-- | Draw rotated emoji.
emo' :: Emoji -> Size -> X -> Y -> Draw Unit
emo' e size x y = liftF $ Emo Mirrored e size x y unit

-- | Draw mirrored emoji.
emor :: Deg -> Emoji -> Size -> X -> Y -> Draw Unit
emor deg e size x y = liftF $ Emor Normal deg e size x y unit

-- | Draw mirrored rotated emoji.
emor' :: Deg -> Emoji -> Size -> X -> Y -> Draw Unit
emor' deg e size x y = liftF $ Emor Mirrored deg e size x y unit

-- | Draw emoji map.
emap :: MapId -> Size -> X -> Y -> Draw Unit
emap mId size x y = liftF $ Emap Normal mId size x y unit

-- | Draw mirrored emoji map.
emap' :: MapId -> Size -> X -> Y -> Draw Unit
emap' mId size x y = liftF $ Emap Mirrored mId size x y unit
