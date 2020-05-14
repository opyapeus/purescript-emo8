module Constants where

import Emo8.Type (Rect)

speed :: Int
speed = 2

emoSize :: Int
emoSize = 32

mapSize :: Int
mapSize = 32

canvasSize :: Rect
canvasSize =
  { width: 512
  , height: 512
  }
