module Emo8.Parser.NConvert
  ( class NConvert
  , nconvert
  , class NMatch
  , nmatch
  ) where

import Prelude (($))
import Data.Either (Either(..))
import Data.List as L
import Data.Symbol (SProxy(..))
import Emo8.Parser.Type (IsNote(..), NoEmoji(..), Result)
import Prim.Symbol as S

class NConvert (s :: Symbol) where
  nconvert :: SProxy s -> L.List (Result IsNote)

instance nConvertNil :: NConvert "" where
  nconvert _ = L.Nil
else instance nConvertCons ::
  ( S.Cons head tail union
  , NConvert tail
  , NMatch head
  ) =>
  NConvert union where
  nconvert _ = L.Cons (nmatch headP) $ nconvert tailP
    where
    headP = SProxy :: SProxy head

    tailP = SProxy :: SProxy tail

class NMatch (s :: Symbol) where
  nmatch :: SProxy s -> Result IsNote

instance nmatchSpace :: NMatch " " where
  nmatch _ = Left Space

instance nmatchReturn :: NMatch "\n" where
  nmatch _ = Left Return

instance nmatchN :: NMatch "🎹" where
  nmatch _ = Right N

instance nmatchV :: NMatch "🈳" where
  nmatch _ = Right V
