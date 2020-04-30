module Emo8.Util.Type
  ( StateRes
  ) where

import Data.Tuple (Tuple)
import Emo8.Data.Update (Resource)

type StateRes s sr dr
  = Tuple s (Resource sr dr)
