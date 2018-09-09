module Nemo.Data.TouchInput
  ( TouchInput
  , pollTouchInput
  ) where
  
import Prelude

import Data.Array (elem, filter, head)
import Data.Int (toNumber)
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Math (atan2, pi)
import Signal (Signal, foldp)
import Signal.DOM (Touch, DimensionPair, touch, windowDimensions)

type TouchInput =
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

type TouchData =
  { touches :: Array Touch
  , window :: DimensionPair
  }

type TouchState =
  { leftBasePos :: Maybe Position
  , rightBasePos :: Maybe Position
  }

data Direction
  = Northwest | North | Northeast
  | West | NoDirection | East
  | Southwest | South | Southeast

derive instance eqDirection :: Eq Direction

type Position =
  { x :: Int
  , y :: Int
  }

diffVector :: Position -> Position -> Position
diffVector { x: xa, y: ya } { x: xb, y: yb } = { x: xa - xb, y: ya - yb } 

pollTouchInput :: Effect (Signal TouchInput)
pollTouchInput = do
  touchData <- pollTouchData
  touchState <- pollTouchState
  pure $ mkTouchInput <$> touchData <*> touchState

mkTouchInput :: TouchData -> TouchState -> TouchInput
mkTouchInput td ts =
  -- TODO: use pattern match for performance?
  { isLeft: elem rightDir [ Northwest, West, Southwest ]
  , isRight: elem rightDir [ Southeast, East, Northeast ]
  , isUp: elem rightDir [ Northwest, North, Northeast ]
  , isDown: elem rightDir [ Southwest, South, Southeast ]
  , isW: elem leftDir [ Northwest, North, Northeast ]
  , isA: elem leftDir [ Northwest, West, Southwest ]
  , isS: elem leftDir [ Southwest, South, Southeast ]
  , isD: elem leftDir [ Southeast, East, Northeast ]
  }
  where
    mLeftPos = pickLeftTouchPos td
    mRightPos = pickRightTouchPos td
    mLeftVec = diffVector <$> mLeftPos <*> ts.leftBasePos
    mRightVec = diffVector <$> mRightPos <*> ts.rightBasePos
    leftDir = fromMaybe NoDirection $ vectorToDirection <$> mLeftVec
    rightDir = fromMaybe NoDirection $ vectorToDirection <$> mRightVec

-- https://github.com/purescript/purescript/issues/888
-- top level guard where
-- TODO: refactor
vectorToDirection :: Position -> Direction
vectorToDirection { x, y } = f arg
  where
    y' = -y -- NOTE: left top -> left bottom base
    arg = atan2 (toNumber y') (toNumber x) -- NOTE: atan2 0.0 0.0 = 0.0
    f rad
      | rad == 0.0 = NoDirection
      | rad < pi * -7.0 / 8.0 || rad >= pi * 7.0 / 8.0 = West
      | rad < pi * -5.0 / 8.0 = Southwest
      | rad < pi * -3.0 / 8.0 = South
      | rad < pi * -1.0 / 8.0 = Southeast
      | rad < pi * 1.0 / 8.0 = East
      | rad < pi * 3.0 / 8.0 = Northeast
      | rad < pi * 5.0 / 8.0 = North
      | rad < pi * 7.0 / 8.0 = Northwest
      | otherwise  = NoDirection

pollTouchData :: Effect (Signal TouchData)
pollTouchData = do
    t <- touch
    w <- windowDimensions
    -- TODO: refactor?
    pure $
      { touches: _
      , window: _
      }
      <$> t
      <*> w

pollTouchState :: Effect (Signal TouchState)
pollTouchState = do
  touchData <- pollTouchData
  pure $ mkTouchStateSig touchData

mkTouchStateSig :: Signal TouchData -> Signal TouchState
mkTouchStateSig touchSig = foldp updateTouchState initialTouchState touchSig

initialTouchState :: TouchState
initialTouchState =
  { leftBasePos: Nothing
  , rightBasePos: Nothing
  }

updateTouchState :: TouchData -> TouchState -> TouchState
updateTouchState td ts =
    { leftBasePos: nextLeftBasePos
    , rightBasePos: nextRightBasePos
    }
  where
    mLeftPos = pickLeftTouchPos td
    mRightPos = pickRightTouchPos td
    nextLeftBasePos = updateBasePos ts.leftBasePos mLeftPos
    nextRightBasePos = updateBasePos ts.rightBasePos mRightPos

updateBasePos :: Maybe Position -> Maybe Position -> Maybe Position
updateBasePos bp tp = case Tuple bp tp of
  Tuple (Just p) (Just _) -> Just p
  Tuple (Just _) Nothing -> Nothing
  Tuple Nothing mp -> mp

pickLeftTouchPos :: TouchData -> Maybe Position
pickLeftTouchPos = pickTouchPosF (<)

pickRightTouchPos :: TouchData -> Maybe Position
pickRightTouchPos = pickTouchPosF (>)

pickTouchPosF :: (Int -> Int -> Boolean) -> TouchData -> Maybe Position
pickTouchPosF op td = head <<< filter f <<< map touchToPos $ td.touches
  where
    width = td.window.w
    f :: Position -> Boolean
    f p = p.x `op` (width / 2)

touchToPos :: Touch -> Position
touchToPos t = { x: t.screenX, y: t.screenY }
