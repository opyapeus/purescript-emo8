module Collision where

import Class.Object (class Object, position, size)
import Control.Monad.Gen (Size)
import Emo8.Game.Update (Update, isOutOfCanvas)
import Emo8.Util.Collide (isCollide)
import Types (Pos)

isOutOfWorld :: forall a. Object a => a -> Update Boolean
isOutOfWorld o = isOut (size o) (position o)

isOut :: Size -> Pos -> Update Boolean
isOut size { x, y } = isOutOfCanvas size x y

isCollideObjects :: forall a b. Object a => Object b => a -> b -> Boolean
isCollideObjects a b = isColl (size a) (position a) (size b) (position b)

isColl :: Size -> Pos -> Size -> Pos -> Boolean
isColl sizeA pA sizeB pB = isCollide sizeA pA.x pA.y sizeB pB.x pB.y
