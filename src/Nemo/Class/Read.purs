module Nemo.Class.Read where

import Prelude
import Data.Either (Either)

-- | Read class.
-- | Read method is for parsing raw asset data.
class Show a <= Read a where
  read :: String -> Either String a
