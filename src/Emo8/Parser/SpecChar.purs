module Emo8.Parser.SpecChar
  ( kind SpecChar
  , Space
  , Return
  ) where

foreign import kind SpecChar

foreign import data Space :: SpecChar

foreign import data Return :: SpecChar
