module Emo8.Type
  ( Tempo
  , Angle
  , X
  , Y
  , Size
  , Config
  , Rect
  , Walls
  ) where

import Emo8.Data.Emoji (Emoji)

type Tempo
  = Int

type Angle
  = Int

type X
  = Int

type Y
  = Int

type Size
  = Int

type Config
  = { canvasSize :: Rect
    , retina :: Boolean
    }

type Rect
  = { width :: Int
    , height :: Int
    }

type Walls
  = Array Emoji
