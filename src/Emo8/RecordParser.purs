module Emo8.RecordParser
  ( class RecordParser
  , parseRow
  , parseRecord
  , parseRecordWrap
  ) where

import Prelude
import Data.Newtype (class Newtype, wrap)
import Data.Symbol (class IsSymbol, SProxy(..))
import Emo8.Parser (class Parser, parse)
import Prim.Row as R
import Prim.RowList as RL
import Record as Record
import Type.Data.RowList (RLProxy(..))

class RecordParser (il :: RL.RowList) (ir :: # Type) (or :: # Type) | il ir -> or where
  parseRow :: RLProxy il -> { | ir } -> { | or }

instance recordParserNil :: RecordParser RL.Nil il () where
  parseRow _ _ = {}

instance recordParserCons ::
  ( Parser sym a
  , IsSymbol name
  , R.Cons name (SProxy sym) iTail ir
  , R.Cons name a oTail or
  , R.Lacks name oTail
  , RecordParser lTail ir oTail
  ) =>
  RecordParser (RL.Cons name (SProxy sym) lTail) ir or where
  parseRow _ r = Record.insert key b $ parseRow rl r
    where
    rl = RLProxy :: RLProxy lTail

    key = SProxy :: SProxy name

    a = Record.get key r

    b = parse a

parseRecord ::
  forall ir il or.
  RL.RowToList ir il =>
  RecordParser il ir or =>
  { | ir } -> { | or }
parseRecord = parseRow (RLProxy :: RLProxy il)

parseRecordWrap ::
  forall ir il or t.
  RL.RowToList ir il =>
  RecordParser il ir or =>
  Newtype t { | or } =>
  { | ir } -> t
parseRecordWrap = wrap <<< parseRecord
