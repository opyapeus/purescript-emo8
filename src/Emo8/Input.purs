module Emo8.Input
  ( class Input
  , poll
  ) where

import Effect (Effect)
import Signal (Signal)

class Input a where
  poll :: Effect (Signal a)
