module Collision where

import Asset (walls)
import Class.Object (class Object, position, size)
import Control.Monad.Gen (Size)
import Nemo.Types (Asset, MapId)
import Nemo.Utils (isCollide, isMapCollide, isMonitorCollide, isOutOfMonitor)
import Types (Pos)


isCollideMap :: forall a. Object a => Asset -> MapId -> Size -> a -> Boolean
isCollideMap asset mId mSize o = isCollMap asset mId mSize (size o) (position o)  

isCollMap :: Asset -> MapId -> Size -> Size -> Pos -> Boolean
isCollMap asset mId mSize size {x, y} = isMapCollide asset mId mSize walls size x y  

isCollideWorld :: forall a. Object a => a -> Boolean
isCollideWorld o = isCollWorld (size o) (position o)

isCollWorld :: Size -> Pos -> Boolean
isCollWorld size {x, y} = isMonitorCollide size x y

isOutOfWorld :: forall a. Object a => a -> Boolean
isOutOfWorld o = isOut (size o) (position o)

isOut :: Size -> Pos -> Boolean
isOut size {x, y} = isOutOfMonitor size x y

isCollideObjects :: forall a b. Object a => Object b => a -> b -> Boolean
isCollideObjects a b = isColl (size a) (position a) (size b) (position b)

isColl :: Size -> Pos -> Size -> Pos -> Boolean
isColl sizeA pA sizeB pB = isCollide sizeA pA.x pA.y sizeB pB.x pB.y
