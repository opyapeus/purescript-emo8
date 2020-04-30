module Emo8.Parser.NList
  ( kind NList
  , NNil
  , NCons
  , NLProxy(..)
  ) where

import Emo8.Parser.Note (kind Note)

foreign import kind NList

foreign import data NNil :: NList

foreign import data NCons :: Note -> NList -> NList

data NLProxy (nl :: NList)
  = NLProxy
