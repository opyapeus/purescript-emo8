module Nemo.Update.Interpreter where

import Prelude

import Control.Monad.Free (foldFree)
import Control.Monad.Gen (Size)
import Data.Foldable (elem, foldr)
import Data.Array (reverse, (!!))
import Data.Maybe (Maybe(..))
import Data.NaturalTransformation (NaturalTransformation)
import Effect (Effect)
import Nemo.Class.Game (class Game)
import Nemo.Data.Emoji (Emoji)
import Nemo.Types (Asset, IdX, MapId, X, Y, IdY)
import Nemo.Update.Action (Update, UpdateF(..))
import Random.PseudoRandom (randomREff)

runUpdate :: forall s. Game s => Asset -> Update s -> Effect s
runUpdate ass = foldFree interpret
  where
    interpret :: NaturalTransformation UpdateF Effect
    interpret (RandomInt min max f) = f <$> randomREff min max
    interpret (RandomNumber min max f) = f <$> randomREff min max
    interpret (IsMapCollide mId mSize walls size x y f) = f <$> pure (isMapCollide ass mId mSize walls size x y)

-- | Map collision detection.
-- | Given emojis are treated as walls.
-- TODO: large object detection
isMapCollide :: Asset -> MapId -> Size -> Array Emoji -> Size -> X -> Y -> Boolean
isMapCollide asset mId mSize walls size x y = foldr f false [lbE, rbE, ltE, rtE]
    where
        lx = x
        rx = x + size - 1
        by = y
        ty = y + size - 1
        lbE = getMapEmoji asset mId (lx / mSize) (by / mSize)
        rbE = getMapEmoji asset mId (rx / mSize) (by / mSize)
        ltE = getMapEmoji asset mId (lx / mSize) (ty / mSize)
        rtE = getMapEmoji asset mId (rx / mSize) (ty / mSize)
        f :: Maybe Emoji -> Boolean -> Boolean
        f mE b = case mE of
            Just e | elem e walls -> true
            _ -> b

-- | Get map emoji with given indices.
-- | Return Nothing there is not emoji.
getMapEmoji :: Asset -> MapId -> IdX -> IdY -> Maybe Emoji
getMapEmoji ass mId xId yId =
    case ass.mapData !! mId of
        Nothing -> Nothing -- NOTE: Prioritize simplicity
        Just em -> reverse em !! yId >>= flip (!!) xId