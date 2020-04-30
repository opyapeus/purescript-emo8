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

import Data.List as L
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
    }

type Rect
  = { width :: Int
    , height :: Int
    }

type Walls
  = L.List Emoji
