module Nemo.Utils
    ( mkAsset
    , emptyAsset
    , defaultDebugConfig
    , defaultMonitorSize
    , isMonitorCollide
    , isOutOfMonitor
    , isCollide
    ) where

import Prelude

import Data.Traversable (traverse)
import Effect (Effect)
import Nemo.Data.Color (Color(..))
import Nemo.Data.DebugDisplay (DebugDisplay(..))
import Nemo.Excepiton (orErrMsg)
import Nemo.Parse (RawMap, RawSound, parseEmojiMap, parseSound)
import Nemo.Types (Asset, DebugConfig, Size, X, Y, MonitorSize)

-- | Collision detection if an object protrudes out of monitor
isMonitorCollide :: MonitorSize -> Size -> X -> Y -> Boolean
isMonitorCollide ms size x y
    = x < 0
    || x + size - 1 > ms.width
    || y < 0
    || y + size - 1 > ms.height

-- | Collision detection if an object completely protrudes out of monitor
isOutOfMonitor :: MonitorSize -> Size -> X -> Y -> Boolean
isOutOfMonitor ms size x y
    = x + size - 1 < 0
    || x > ms.width
    || y + size - 1 < 0
    || y > ms.height

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
    pure { mapData: ms, soundData: ss }

-- | Empty asset for convenience. 
emptyAsset :: Asset
emptyAsset = { mapData: [], soundData: [] }

-- | Default debug config for convenience. 
defaultDebugConfig :: DebugConfig
defaultDebugConfig = { debugDisplay: LeftTop, color: White }

defaultMonitorSize :: MonitorSize
defaultMonitorSize =
    { width: 1024
    , height: 1024
    }
