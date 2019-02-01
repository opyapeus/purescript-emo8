module Nemo.Data.TouchDirection where
  
import Prelude

import Data.Int (toNumber)
import Math (atan2, pi)
import Nemo.Data.TouchData (TouchPosition)

data TouchDirection
  = Northwest | North | Northeast
  | West | NoDirection | East
  | Southwest | South | Southeast

derive instance eqTouchDirection :: Eq TouchDirection

type TouchVector =
  { vx :: Int
  , vy :: Int
  }

-- https://github.com/purescript/purescript/issues/888
-- top level guard where
-- TODO: refactor
vectorToDirection :: TouchVector -> TouchDirection
vectorToDirection { vx, vy } = f arg
  where
    arg = atan2 (toNumber vy) (toNumber vx) -- NOTE: atan2 0.0 0.0 = 0.0
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

diffVector :: TouchPosition -> TouchPosition -> TouchVector
diffVector { x: xa, y: ya } { x: xb, y: yb } = { vx: xa - xb, vy: ya - yb }
