module Emo8.Data.Input
  ( Input
  ) where

-- | Emo8 input type.
-- | - Keyboard
-- | ```
-- |  /¯¯¯\_/¯¯¯\
-- | |  W  |  ↑  |
-- | | A D | ← → |
-- | |  S  |  ↓  |
-- |  \___/¯\___/
-- | ```
-- | - Swipe Screen
-- | ```
-- | |¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯|
-- | |   👆    |   👆   |
-- | | 👈   👉 | 👈   👉 |
-- | |   👇    |   👇   |
-- | |________|________|
-- | ```
type Input
  = { isUp :: Boolean
    , isLeft :: Boolean
    , isDown :: Boolean
    , isRight :: Boolean
    , isW :: Boolean
    , isA :: Boolean
    , isS :: Boolean
    , isD :: Boolean
    }
