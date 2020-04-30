module Emo8.Parser.NTo
  ( class NTo
  , nto
  , IsNote(..)
  ) where

import Prelude
import Data.Either (Either(..))
import Data.List as L
import Emo8.Parser.NList (NCons, NLProxy(..), NNil, kind NList)
import Emo8.Parser.Note (Note, Rest, Vacancy)
import Emo8.Parser.SpecChar as SC
import Emo8.Parser.Type (NoEmoji(..), Result)

data IsNote
  = N
  | V

derive instance eqIsNote :: Eq IsNote

class NTo (nl :: NList) where
  nto :: NLProxy nl -> L.List (Result IsNote)

instance toNil :: NTo NNil where
  nto _ = L.Nil

instance toConsSpace :: NTo nl => NTo (NCons (Rest SC.Space) nl) where
  nto _ = L.Cons (Left Space) $ nto (NLProxy :: NLProxy nl)

instance toConsReturn :: NTo nl => NTo (NCons (Rest SC.Return) nl) where
  nto _ = L.Cons (Left Return) $ nto (NLProxy :: NLProxy nl)

instance toConsN :: NTo nl => NTo (NCons Note nl) where
  nto _ = L.Cons (Right N) $ nto (NLProxy :: NLProxy nl)

instance toConsV :: NTo nl => NTo (NCons Vacancy nl) where
  nto _ = L.Cons (Right V) $ nto (NLProxy :: NLProxy nl)
