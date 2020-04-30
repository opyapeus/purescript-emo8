module Emo8.Util.Newtype
  ( mapN
  ) where

import Prelude
import Data.Newtype (class Newtype, unwrap, wrap)

mapN :: forall t a. Newtype t a => (a -> a) -> t -> t
mapN f = wrap <<< f <<< unwrap
