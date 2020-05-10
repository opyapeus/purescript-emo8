module Emo8.Parser
  ( class Parser
  , parse
  ) where

import Prelude
import Data.Either (Either(..))
import Data.List as L
import Data.Symbol (SProxy(..))
import Data.Tuple (Tuple(..), fst)
import Emo8.Data.Emoji as E
import Emo8.Data.Note as N
import Emo8.Parser.EConvert (class EConvert, econvert)
import Emo8.Parser.NConstraint (class ExtractNR, class UpToFiveNote)
import Emo8.Parser.NConvert (class NConvert)
import Emo8.Parser.NList (NLProxy(..))
import Emo8.Parser.NTo (class NTo, IsNote(..), nto)
import Emo8.Parser.Type (NoEmoji(..), Result)

class Parser (s :: Symbol) a where
  parse :: SProxy s -> a

instance parseEmojiMap ::
  EConvert s =>
  Parser s (L.List (L.List E.Emoji)) where
  parse _ =
    map L.reverse
      <<< L.filter (notEq L.Nil)
      $ go res L.Nil
    where
    res = econvert (SProxy :: SProxy s)

instance parseScore ::
  ( NConvert s nl
  , NTo nl
  , ExtractNR nl ll
  , UpToFiveNote ll
  ) =>
  Parser s (L.List (L.List N.Note)) where
  parse _ =
    map pickIsNote
      <<< map L.reverse
      <<< L.filter (notEq L.Nil)
      $ go res L.Nil
    where
    res = nto (NLProxy :: NLProxy nl)

    pickIsNote :: L.List IsNote -> L.List N.Note
    pickIsNote = map fst <<< L.filter pick <<< L.zip N.candidates
      where
      pick (Tuple _ N) = true

      pick (Tuple _ V) = false

go :: forall a. L.List (Result a) -> L.List a -> L.List (L.List a)
go L.Nil acc = pure acc

go (L.Cons head tail) acc = case head of
  Left Space -> go tail acc
  Left Return -> L.Cons acc $ go tail L.Nil
  Right e -> go tail $ L.Cons e acc
