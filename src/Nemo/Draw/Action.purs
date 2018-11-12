module Nemo.Draw.Action where

import Prelude

import Control.Monad.Free (Free, liftF)
import Control.Monad.Gen (Size)
import Nemo.Data.Color (Color)
import Nemo.Data.Emoji (Emoji)
import Nemo.Types (Deg, MapId, X, Y)

type Draw = Free DrawF

data DrawF n
    = ClearScreen Color n
    | Emo Appearance Emoji Size X Y n
    | Emor Appearance Deg Emoji Size X Y n
    | Emap Appearance MapId Size X Y n

data Appearance = Normal | Mirrored

cls :: Color -> Draw Unit
cls c = liftF $ ClearScreen c unit

emo :: Emoji -> Size -> X -> Y -> Draw Unit
emo e size x y = liftF $ Emo Normal e size x y unit

emo' :: Emoji -> Size -> X -> Y -> Draw Unit
emo' e size x y = liftF $ Emo Mirrored e size x y unit

emor :: Deg -> Emoji -> Size -> X -> Y -> Draw Unit
emor deg e size x y = liftF $ Emor Normal deg e size x y unit

emor' :: Deg -> Emoji -> Size -> X -> Y -> Draw Unit
emor' deg e size x y = liftF $ Emor Mirrored deg e size x y unit

emap :: MapId -> Size -> X -> Y -> Draw Unit
emap mId size x y = liftF $ Emap Normal mId size x y unit

emap' :: MapId -> Size -> X -> Y -> Draw Unit
emap' mId size x y = liftF $ Emap Mirrored mId size x y unit
