module Emo8.Util.Collide
  ( isOutOfCanvas
  , isCollideCanvas
  , isCollideMap
  , isCollide
  ) where

import Prelude
import Data.List as L
import Data.Maybe (Maybe(..))
import Emo8.Data.Emoji (Emoji)
import Emo8.Parser.Type (EmojiMap)
import Emo8.Type (Rect, Size, X, Y, Walls)

isOutOfCanvas :: Rect -> Size -> X -> Y -> Boolean
isOutOfCanvas r size x y
  | x >= r.width = true
  | y >= r.height = true
  | x + size <= 0 = true
  | y + size <= 0 = true
  | otherwise = false

-- NOTE: collision means overlap, not touch
isCollideCanvas :: Rect -> Size -> X -> Y -> Boolean
isCollideCanvas r size x y
  | x < 0 = true
  | y < 0 = true
  | x + size > r.width = true
  | y + size > r.height = true
  | otherwise = false

-- | Check if the object collides the map with the specified accessor, map size, walls, object size, x and y.
-- |
-- | The walls are emojis collidable in a certain map.
isCollideMap :: EmojiMap -> Size -> Walls -> Size -> X -> Y -> Boolean
isCollideMap m ms walls size x y = f
  where
  f
    | isWall $ get leftId topId = true
    | isWall $ get leftId bottomId = true
    | isWall $ get rightId topId = true
    | isWall $ get rightId bottomId = true
    | otherwise = false

  -- NOTE: division is rounded down
  leftId = x / ms

  rightId = (x + size - 1) / ms

  bottomId = y / ms

  topId = (y + size - 1) / ms

  get :: Int -> Int -> Maybe Emoji
  get xId yId = flip L.index xId =<< L.index (L.reverse m) yId

  isWall (Just e) = L.elem e walls

  isWall Nothing = false

-- | Check if the two objects collide.
isCollide :: Size -> X -> Y -> Size -> X -> Y -> Boolean
isCollide sizeA xA yA sizeB xB yB
  | xA < xB + sizeB
  , xB < xA + sizeA
  , yA < yB + sizeB
  , yB < yA + sizeA = true
  | otherwise = false
