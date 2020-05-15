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
import Emo8.Parser.NConstraint (class NConstraint)
import Emo8.Parser.NConvert (class NConvert, nconvert)
import Emo8.Parser.Type (IsNote(..), NoEmoji(..), Result)

-- | Emo8 emoji parser class.
class Parser (s :: Symbol) a where
  -- | It parse `Symbol` type as `EmojiMap` or `Score` value.
  parse :: SProxy s -> L.List (L.List a)

-- | Example
-- | ```
-- | mountFuji :: EmojiMap
-- | mountFuji = parse (SProxy :: SProxy Fuji)
-- |
-- | type Fuji
-- |   = """
-- |   🈳🈳🈳🈳🈳🈳🈳🈳🈳
-- |   🈳⛅🈳🈳🎌🈳🈳🌧🈳
-- |   🈳🈳🈳🌳🗻🌳🈳🈳🈳
-- |   🈳🈳🌳🗻🗻🗻🌳🈳🈳
-- |   🈳🌳🗻🗻🗻🗻🗻🌳🈳
-- |   🌳🗻🗻🗻🗻🗻🗻🗻🌳
-- |   """
-- | ```
instance parseEmojiMap ::
  EConvert s =>
  Parser s E.Emoji where
  parse _ =
    map L.reverse
      <<< L.filter (notEq L.Nil)
      $ go res L.Nil
    where
    res = econvert (SProxy :: SProxy s)

-- | Example
-- | ```
-- | beep :: Score
-- | beep = parse (SProxy :: SProxy NHK)
-- |
-- | type NHK
-- |   = """
-- |   🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
-- |   🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
-- |   🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
-- |   🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
-- |   """
-- | ```
instance parseScore ::
  ( NConvert s
  , NConstraint s
  ) =>
  Parser s N.Note where
  parse _ =
    map pickIsNote
      <<< map L.reverse
      <<< L.filter (notEq L.Nil)
      $ go res L.Nil
    where
    res = nconvert (SProxy :: SProxy s)

    -- NOTE: it supposed to be the same length of notes as UpToElevenLength
    pickIsNote :: L.List IsNote -> L.List N.Note
    pickIsNote = map fst <<< L.filter pick <<< L.zip N.notes
      where
      pick (Tuple _ N) = true

      pick (Tuple _ V) = false

go :: forall a. L.List (Result a) -> L.List a -> L.List (L.List a)
go L.Nil acc = pure acc

go (L.Cons head tail) acc = case head of
  Left Space -> go tail acc
  Left Return -> L.Cons acc $ go tail L.Nil
  Right e -> go tail $ L.Cons e acc
