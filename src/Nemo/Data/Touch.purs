module Nemo.Data.Touch
  ( TouchData
  , TouchState
  , Position
  , pollTouches
  , initialTouchState
  , mergeToInput
  , updateTouchState
  ) where
  
import Prelude

import Data.Array (elem, filter, head)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Eq (genericEq)
import Data.Int (toNumber)
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Math (atan2, pi)
import Nemo.Data.Input (Input)
import Signal (Signal)
import Signal.DOM (Touch, DimensionPair, touch, windowDimensions)

type TouchData =
  { touches :: Array Touch
  , window :: DimensionPair    
  }

pollTouches :: Effect (Signal TouchData)
pollTouches = do
    t <- touch
    w <- windowDimensions
    -- TODO: refactor?
    pure $
      { touches: _
      , window: _
      }
      <$> t
      <*> w

data Direction
  = Northwest | North | Northeast
  | West | NoDirection | East
  | Southwest | South | Southeast
derive instance genericDirection :: Generic Direction _
instance showDirection :: Eq Direction where
  eq = genericEq

type Position =
  { x :: Int
  , y :: Int
  }

type TouchState =
  { leftBasePos :: Maybe Position
  , rightBasePos :: Maybe Position
  , isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

initialTouchState :: TouchState
initialTouchState =
  { leftBasePos: Nothing
  , rightBasePos: Nothing
  , isLeft: false
  , isRight: false
  , isUp: false
  , isDown: false
  , isW: false
  , isA: false
  , isS: false
  , isD: false
  }

updateTouchState :: TouchData -> TouchState -> TouchState
updateTouchState d s =
    -- TODO: use pattern match for performance?
    { leftBasePos: nextLeftBasePos
    , rightBasePos: nextRightBasePos
    , isLeft: elem rightDir [Northwest, West, Southwest]
    , isRight: elem rightDir [Southeast, East, Northeast]
    , isUp: elem rightDir [Northwest, North, Northeast]
    , isDown: elem rightDir [Southwest, South, Southeast]
    , isW: elem leftDir [Northwest, North, Northeast]
    , isA: elem leftDir [Northwest, West, Southwest]
    , isS: elem leftDir [Southwest, South, Southeast]
    , isD: elem leftDir [Southeast, East, Northeast]
    }
  where
    touches = d.touches
    width = d.window.w
    mLeftPos = head $ touchToPos <$> filter (\t -> t.screenX < width / 2) touches
    mRightPos = head $ touchToPos <$> filter (\t -> t.screenX > width / 2) touches
    nextLeftBasePos = updateBasePos s.leftBasePos mLeftPos
    nextRightBasePos = updateBasePos s.rightBasePos mRightPos
    mLeftVec = diffVector <$> mLeftPos <*> s.leftBasePos
    mRightVec = diffVector <$> mRightPos <*> s.rightBasePos
    leftDir = fromMaybe NoDirection $ vectorToDirection <$> mLeftVec
    rightDir = fromMaybe NoDirection $ vectorToDirection <$> mRightVec

updateBasePos :: Maybe Position -> Maybe Position -> Maybe Position
updateBasePos bp tp = case Tuple bp tp of
  Tuple (Just p) (Just _) -> Just p
  Tuple (Just _) Nothing -> Nothing
  Tuple Nothing mp -> mp

touchToPos :: Touch -> Position
touchToPos t = { x: t.screenX, y: t.screenY }

diffVector :: Position -> Position -> Position
diffVector { x: xa, y: ya } { x: xb, y: yb } = { x: xa - xb, y: ya - yb } 

-- https://github.com/purescript/purescript/issues/888
-- top level guard where
-- TODO: refactor
vectorToDirection :: Position -> Direction
vectorToDirection { x, y } = f arg
  where
    y' = -y -- NOTE: left top -> left bottom base
    arg = atan2 (toNumber y') (toNumber x)
    f rad
      | rad < pi * -7.0 / 8.0 || rad >= pi * 7.0 / 8.0 = West
      | rad < pi * -5.0 / 8.0 = Southwest
      | rad < pi * -3.0 / 8.0 = South
      | rad < pi * -1.0 / 8.0 = Southeast
      | rad < pi * 1.0 / 8.0 = East
      | rad < pi * 3.0 / 8.0 = Northeast
      | rad < pi * 5.0 / 8.0 = North
      | rad < pi * 7.0 / 8.0 = Northwest
      | otherwise  = NoDirection
  
mergeToInput :: TouchState -> Input -> Input
mergeToInput s i =
  { isLeft : i.isLeft || s.isLeft
  , isRight : i.isRight || s.isRight
  , isUp : i.isUp || s.isUp
  , isDown : i.isDown || s.isDown
  , isW : i.isW || s.isW
  , isA : i.isA || s.isA
  , isS : i.isS || s.isS
  , isD : i.isD || s.isD
  }