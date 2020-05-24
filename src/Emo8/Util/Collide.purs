module Emo8.Util.Collide
  ( isOutOfCanvas
  , isCollideCanvas
  , isCollideMap
  , isCollide
  , Sink
  , sinkCanvas
  , sinkMapXY
  ) where

import Prelude
import Data.List as L
import Data.Maybe (Maybe(..))
import Data.Ord (abs)
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

-- | Check if the object collides the emoji map with the specified map size, walls, object size, x and y.
-- |
-- | The walls are emojis collidable in a certain map.
isCollideMap :: EmojiMap -> Size -> Walls -> Size -> X -> Y -> Boolean
isCollideMap em ms walls size x y = f
  where
  f
    | coll leftId topId = true
    | coll leftId bottomId = true
    | coll rightId topId = true
    | coll rightId bottomId = true
    | otherwise = false

  -- NOTE: division is rounded down
  leftId = x / ms

  rightId = (x + size - 1) / ms

  bottomId = y / ms

  topId = (y + size - 1) / ms

  coll = isWall em walls

-- | Check if the two objects collide.
isCollide :: Size -> X -> Y -> Size -> X -> Y -> Boolean
isCollide sizeA xA yA sizeB xB yB
  | xA < xB + sizeB
  , xB < xA + sizeA
  , yA < yB + sizeB
  , yB < yA + sizeA = true
  | otherwise = false

type Sink
  = { x :: Int
    , y :: Int
    }

-- | Calculate how deep the object is sunk outside the canvas.
sinkCanvas :: Rect -> Size -> X -> Y -> Maybe Sink
sinkCanvas r size x y = case xF, yF of
  Just sx, Just sy -> Just { x: sx, y: sy }
  Just sx, Nothing -> Just { x: sx, y: 0 }
  Nothing, Just sy -> Just { x: 0, y: sy }
  Nothing, Nothing -> Nothing
  where
  xF
    | x < 0 = Just x
    | x + size > r.width = Just $ x + size - r.width
    | otherwise = Nothing

  yF
    | y < 0 = Just y
    | y + size > r.height = Just $ y + size - r.height
    | otherwise = Nothing

-- NOTE: judge separately x -> y or y -> x, using previous x, y.
-- | Calculate how deep the object is sunk in the walls.
-- | It takes emoji map, map size, walls, previous x, previous y, emoji size, x and y.
-- | ※ This function only checks 4-edges of the object and treats 1-map-cell for each the edges.
sinkMapXY :: EmojiMap -> Size -> Walls -> X -> Y -> Size -> X -> Y -> Maybe Sink
sinkMapXY em ms walls px py size x y =
  if abs (x - px) > abs (y - py) then case sinkMapXF x py of
    Nothing -> case sinkMapYF x y of
      Nothing -> Nothing
      Just sy -> Just { x: 0, y: sy }
    Just sx -> case sinkMapYF (x - sx) y of
      Nothing -> Just { x: sx, y: 0 }
      Just sy -> Just { x: sx, y: sy }
  else case sinkMapYF px y of
    Nothing -> case sinkMapXF x y of
      Nothing -> Nothing
      Just sx -> Just { x: sx, y: 0 }
    Just sy -> case sinkMapXF x (y - sy) of
      Nothing -> Just { x: 0, y: sy }
      Just sx -> Just { x: sx, y: sy }
  where
  sinkMapXF = sinkMapX em ms walls size

  sinkMapYF = sinkMapY em ms walls size

sinkMapX :: EmojiMap -> Size -> Walls -> Size -> X -> Y -> Maybe Int
sinkMapX em ms walls size x y = case coll id.left id.bottom
  , coll id.right id.bottom
  , coll id.left id.top
  , coll id.right id.top of
  -- zero
  false, false, false, false -> Nothing
  -- left
  true, false, true, false -> Just sink.left
  true, false, false, false -> Just sink.left
  false, false, true, false -> Just sink.left
  -- right
  false, true, false, true -> Just sink.right
  false, true, false, false -> Just sink.right
  false, false, false, true -> Just sink.right
  -- other
  _, _, _, _ -> Just 0
  where
  coll = isWall em walls

  id = mapId ms size x y

  sink =
    { left: mod x ms - ms
    , right: mod x ms
    }

sinkMapY :: EmojiMap -> Size -> Walls -> Size -> X -> Y -> Maybe Int
sinkMapY em ms walls size x y = case coll id.left id.bottom
  , coll id.right id.bottom
  , coll id.left id.top
  , coll id.right id.top of
  -- zero
  false, false, false, false -> Nothing
  -- bottom
  true, true, false, false -> Just sink.bottom
  true, false, false, false -> Just sink.bottom
  false, true, false, false -> Just sink.bottom
  -- top
  false, false, true, true -> Just sink.top
  false, false, true, false -> Just sink.top
  false, false, false, true -> Just sink.top
  -- other
  _, _, _, _ -> Just 0
  where
  coll = isWall em walls

  id = mapId ms size x y

  sink =
    { bottom: mod y ms - ms
    , top: mod y ms
    }

mapId ::
  Size ->
  Size ->
  X ->
  Y ->
  { bottom :: Int
  , left :: Int
  , right :: Int
  , top :: Int
  }
mapId ms size x y =
  { left: x / ms
  , right: (x + size - 1) / ms
  , bottom: y / ms
  , top: (y + size - 1) / ms
  }

isWall :: EmojiMap -> Walls -> Int -> Int -> Boolean
isWall em walls xId yId = case getEmoji of
  Just e
    | L.elem e walls -> true
  _ -> false
  where
  getEmoji :: Maybe Emoji
  getEmoji = flip L.index xId =<< L.index (L.reverse em) yId
