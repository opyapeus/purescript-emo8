module Emo8.Data.Input
  ( Input
  , InputRow
  ) where

type Input
  = { | InputRow }

type InputRow
  = ( isUp :: Boolean
    , isLeft :: Boolean
    , isDown :: Boolean
    , isRight :: Boolean
    , isW :: Boolean
    , isA :: Boolean
    , isS :: Boolean
    , isD :: Boolean
    )
