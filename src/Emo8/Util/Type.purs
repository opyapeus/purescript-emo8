module Emo8.Util.Type
  ( StateRes
  ) where

import Data.Tuple (Tuple)
import Emo8.Data.Update (Resource)

type StateRes s dt st
  = Tuple s (Resource dt st)
