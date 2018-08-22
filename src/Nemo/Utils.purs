module Nemo.Utils
    ( mkAsset
    , emptyAsset
    , isMapCollide
    , getMapEmoji
    , isMonitorCollide
    , isOutOfMonitor
    , isCollide
    ) where

import Prelude

import Data.Array (reverse, (!!))
import Data.Either (Either(..))
import Data.Foldable (elem, foldr)
import Data.Maybe (Maybe(..))
import Data.Traversable (traverse)
import Effect (Effect)
import Effect.Exception (throw)
import Nemo.Constants (scene)
import Nemo.Data.Emoji (Emoji)
import Nemo.Parse (parseEmojiMap, parseSound)
import Nemo.Types (Asset(..), IdX, IdY, MapId, RawMap, RawSound, Size, X, Y)


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
getMapEmoji (Asset ass) mId xId yId =
    case ass.mapData !! mId of
        Nothing -> Nothing -- NOTE: Prioritize simplicity
        Just em -> reverse em !! yId >>= flip (!!) xId

-- | Collision detection if an object protrudes out of monitor
isMonitorCollide :: Size -> X -> Y -> Boolean
isMonitorCollide size x y
    = x < 0
    || x + size - 1 > scene.width
    || y < 0
    || y + size - 1 > scene.height

-- | Collision detection if an object completely protrudes out of monitor
isOutOfMonitor :: Size -> X -> Y -> Boolean
isOutOfMonitor size x y
    = x + size - 1 < 0
    || x > scene.width
    || y + size - 1 < 0
    || y > scene.height

-- | Collision detection between two objects
isCollide :: Size -> X -> Y -> Size -> X -> Y -> Boolean
isCollide sizeA xA yA sizeB xB yB
    = pAlx <= pBrx
    && pBlx <= pArx
    && pAby <= pBty
    && pBby <= pAty
    where
        pAlx = xA
        pArx = xA + sizeA - 1
        pAby = yA
        pAty = yA + sizeA - 1 
        pBlx = xB
        pBrx = xB + sizeB - 1
        pBby = yB
        pBty = yB + sizeB - 1 

-- | Make asset data from raw maps and raw sounds.
-- | If there are unparsable strings, exception raised when executing javascript.
mkAsset :: Array RawMap -> Array RawSound -> Effect Asset
mkAsset rms rss = do
    ms <- orErrMsg $ traverse parseEmojiMap rms
    ss <- orErrMsg $ traverse parseSound rss
    pure $ Asset { mapData: ms, soundData: ss }

orErrMsg :: forall a. Either String a -> Effect a
orErrMsg = case _ of
    Right val -> pure val
    Left msg -> throw msg

-- | Empty asset for convenience. 
emptyAsset :: Asset
emptyAsset = Asset { mapData: [], soundData: [] }