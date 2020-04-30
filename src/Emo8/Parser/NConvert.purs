module Emo8.Parser.NConvert
  ( class NConvert
  , class Match
  ) where

import Emo8.Parser.NList (NCons, NNil, kind NList)
import Emo8.Parser.Note
import Emo8.Parser.SpecChar (Return, Space)
import Prim.Symbol as S

class NConvert (s :: Symbol) (nl :: NList) | s -> nl

instance nConvertNil :: NConvert "" NNil
else instance nConvertCons ::
  ( S.Cons head tail union
  , NConvert tail nl
  , Match head out
  ) =>
  NConvert union (NCons out nl)

class Match (s :: Symbol) (n :: Note) | s -> n

instance matchSpace :: Match " " (Rest Space)

instance matchReturn :: Match "\n" (Rest Return)

instance matchN :: Match "🎹" Note

instance matchV :: Match "🈳" Vacancy
