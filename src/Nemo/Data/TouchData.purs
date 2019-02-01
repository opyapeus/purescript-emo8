module Nemo.Data.TouchData
  ( TouchData(..)
  , TouchPosition
  ) where
  
import Prelude

import Data.Array (filter, head)
import Data.Maybe (Maybe)
import Nemo.Class.Input (class Input)
import Signal.DOM (Touch, DimensionPair, touch, windowDimensions)

newtype TouchData = TouchData
  { leftPos :: Maybe TouchPosition
  , rightPos :: Maybe TouchPosition
  }

instance inputTouchData :: Input TouchData where
  poll = do
    ts <- touch
    dp <- windowDimensions
    let leftPosSig = pickLeftTouchPos <$> dp <*> ts
        rightPosSig = pickRightTouchPos <$> dp <*> ts
    pure <<< map TouchData $
      { leftPos: _
      , rightPos: _
      }
      <$> leftPosSig
      <*> rightPosSig

type TouchPosition =
  { x :: Int
  , y :: Int
  }

pickLeftTouchPos :: DimensionPair -> Array Touch -> Maybe TouchPosition
pickLeftTouchPos = pickTouchPosF (<)

pickRightTouchPos :: DimensionPair -> Array Touch -> Maybe TouchPosition
pickRightTouchPos = pickTouchPosF (>)

pickTouchPosF :: (Int -> Int -> Boolean) -> DimensionPair -> Array Touch -> Maybe TouchPosition
pickTouchPosF op dp ts = head <<< filter f <<< map touchToPos $ ts
  where
    f :: TouchPosition -> Boolean
    f p = p.x `op` (dp.w / 2)

-- NOTE: left top base -> left bottom base
touchToPos :: Touch -> TouchPosition
touchToPos t = { x: t.screenX, y: -t.screenY }
