module Emo8.Parser.Note
  ( kind Note
  , Rest
  , Note
  , Vacancy
  ) where

import Emo8.Parser.SpecChar (kind SpecChar)

foreign import kind Note

foreign import data Rest :: SpecChar -> Note

foreign import data Note :: Note

foreign import data Vacancy :: Note
