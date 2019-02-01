module Nemo.Class.Input where

import Effect (Effect)
import Signal (Signal)

class Input a where
  poll :: Effect (Signal a) 
