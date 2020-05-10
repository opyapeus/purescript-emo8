module Emo8.Parser.Type where

import Prelude
import Data.Either (Either)
import Data.List as L
import Emo8.Data.Emoji as E
import Emo8.Data.Note as N

type Result a
  = Either NoEmoji a

data NoEmoji
  = Space
  | Return

derive instance eqNoEmoji :: Eq NoEmoji

data IsNote
  = N
  | V

derive instance eqIsNote :: Eq IsNote

type EmojiMap
  = L.List (L.List E.Emoji)

type Score
  = L.List (L.List N.Note)
