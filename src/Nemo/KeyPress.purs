module Nemo.KeyPress where

-- | Press state for watching press action.
data PressState
    = Pressed -- ^ hold key down
    | Unpressed -- ^ hold key up
    | Catched -- ^ just key down
    | Released -- ^ jsut key up

-- | Update press state function for convenience.
updatePressState :: Boolean -> PressState -> PressState
updatePressState btn ps =
  case btn, ps of
    true, Unpressed -> Catched
    true, Catched -> Pressed
    true, Pressed -> Pressed
    true, Released -> Catched
    false, Unpressed -> Unpressed
    false, Catched -> Released
    false, Pressed -> Released
    false, Released -> Unpressed