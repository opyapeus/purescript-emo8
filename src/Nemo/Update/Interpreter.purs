module Nemo.Update.Interpreter where

import Prelude

import Control.Monad.Free (foldFree)
import Control.Monad.Gen (Size)
import Data.Array (reverse, (!!))
import Data.Foldable (elem, foldr)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Nemo.Class.Game (class Game)
import Nemo.Data.Emoji (Emoji)
import Nemo.Excepiton (providedMap)
import Nemo.Types (Asset, IdX, MapId, X, Y, IdY)
import Nemo.Update.Action (Update, UpdateF(..))
import Random.PseudoRandom (randomREff)

runUpdate :: forall s. Game s => Asset -> Update s -> Effect s
runUpdate ass = foldFree interpret
  where
    interpret :: UpdateF ~> Effect
    interpret (RandomInt min max f) = f <$> randomREff min max
    interpret (RandomNumber min max f) = f <$> randomREff min max
    interpret (IsMapCollide mId mSize walls size x y f) = f <$> isMapCollide ass mId mSize walls size x y

-- TODO: large object detection
isMapCollide :: Asset -> MapId -> Size -> Array Emoji -> Size -> X -> Y -> Effect Boolean
isMapCollide asset mId mSize walls size x y = do
    lbE <- getMapEmoji asset mId (lx / mSize) (by / mSize)
    rbE <- getMapEmoji asset mId (rx / mSize) (by / mSize)
    ltE <- getMapEmoji asset mId (lx / mSize) (ty / mSize)
    rtE <- getMapEmoji asset mId (rx / mSize) (ty / mSize)
    pure $ foldr f false [lbE, rbE, ltE, rtE]
    where
        lx = x
        rx = x + size - 1
        by = y
        ty = y + size - 1
        f :: Maybe Emoji -> Boolean -> Boolean
        f mE b = case mE of
            Just e | elem e walls -> true
            _ -> b

getMapEmoji :: Asset -> MapId -> IdX -> IdY -> Effect (Maybe Emoji)
getMapEmoji ass mId xId yId =
    providedMap ass.mapData mId $ \em ->
        pure $ reverse em !! yId >>= flip (!!) xId