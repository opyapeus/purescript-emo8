module Nemo.KeyPress where

import Data.Tuple (Tuple(..))

-- | Press state for watching press action.
data PressState
    = Pressed -- ^ hold key down
    | Unpressed -- ^ hold key up
    | Catched -- ^ just key down
    | Released -- ^ jsut key up

-- | Update press state function for convenience.
updatePressState :: Boolean -> PressState -> PressState
updatePressState btn ps =
  case Tuple btn ps of
    Tuple true Unpressed -> Catched
    Tuple true Catched -> Pressed
    Tuple true Pressed -> Pressed
    Tuple true Released -> Catched
    Tuple false Unpressed -> Unpressed
    Tuple false Catched -> Released
    Tuple false Pressed -> Released
    Tuple false Released -> Unpressed