module Emo8.Parser.NConstraint
  ( class NConstraint
  , class ToNList
  , class MatchNote
  , class ExtractNR
  , class UpToThreeNote
  , class ExtractNVR
  , class UpTo13Length
  , kind SpecChar
  , Space
  , Return
  , kind Note
  , Rest
  , Note
  , Vacancy
  , kind NList
  , NNil
  , NCons
  , kind Label
  , S
  , N
  , kind LList
  , LNil
  , LCons
  ) where

import Prim.Symbol as S
import Prim.TypeError as TE

class NConstraint (s :: Symbol)

instance nConstraint ::
  ( ToNList s nl
  , ExtractNR nl ll
  , UpToThreeNote ll
  , ExtractNVR nl ll'
  , UpTo13Length ll'
  ) =>
  NConstraint s

foreign import kind SpecChar

foreign import data Space :: SpecChar

foreign import data Return :: SpecChar

foreign import kind Note

foreign import data Rest :: SpecChar -> Note

foreign import data Note :: Note

foreign import data Vacancy :: Note

foreign import kind NList

foreign import data NNil :: NList

foreign import data NCons :: Note -> NList -> NList

class ToNList (s :: Symbol) (nl :: NList) | s -> nl

instance toNListNil :: ToNList "" NNil
else instance toNListCons ::
  ( S.Cons head tail union
  , ToNList tail nl
  , MatchNote head out
  ) =>
  ToNList union (NCons out nl)

class MatchNote (s :: Symbol) (n :: Note) | s -> n

instance matchNoteNote :: MatchNote "🎹" Note

instance matchNoteVacancy :: MatchNote "🈳" Vacancy

instance matchNoteSpace :: MatchNote " " (Rest Space)

instance matchNoteReturn :: MatchNote "\n" (Rest Return)

foreign import kind Label

foreign import data S :: Label

foreign import data N :: Label

foreign import kind LList

foreign import data LNil :: LList

foreign import data LCons :: Label -> LList -> LList

infixr 6 type LCons as :

class ExtractNR (nl :: NList) (ll :: LList) | nl -> ll

instance extractNRNil :: ExtractNR NNil LNil

instance extractNRConsNote :: ExtractNR nl ll => ExtractNR (NCons Note nl) (LCons S ll)

instance extractNRConsVacancy :: ExtractNR nl ll => ExtractNR (NCons Vacancy nl) ll

instance extractNRConsSpace :: ExtractNR nl ll => ExtractNR (NCons (Rest Space) nl) ll

instance extractNRConsReturn :: ExtractNR nl ll => ExtractNR (NCons (Rest Return) nl) (LCons N ll)

class UpToThreeNote (ll :: LList)

instance upToThreeNoteNil :: UpToThreeNote LNil

instance upToThreeNoteConsN ::
  UpToThreeNote ll =>
  UpToThreeNote (N : ll)

instance upToThreeNoteCons1 ::
  UpToThreeNote ll =>
  UpToThreeNote (S : N : ll)

instance upToThreeNoteCons2 ::
  UpToThreeNote ll =>
  UpToThreeNote (S : S : N : ll)

instance upToThreeNoteCons3 ::
  UpToThreeNote ll =>
  UpToThreeNote (S : S : S : N : ll)

instance upToThreeNoteConsMore ::
  ( UpToThreeNote ll
  , TE.Fail (TE.Text "The maximum note count is 3 per line.")
  ) =>
  UpToThreeNote (S : S : S : S : ll)

class ExtractNVR (nl :: NList) (ll :: LList) | nl -> ll

instance extractNVRNil :: ExtractNVR NNil LNil

instance extractNVRConsNote :: ExtractNVR nl ll => ExtractNVR (NCons Note nl) (LCons S ll)

instance extractNVRConsVacancy :: ExtractNVR nl ll => ExtractNVR (NCons Vacancy nl) (LCons S ll)

instance extractNVRConsSpace :: ExtractNVR nl ll => ExtractNVR (NCons (Rest Space) nl) ll

instance extractNVRConsReturn :: ExtractNVR nl ll => ExtractNVR (NCons (Rest Return) nl) (LCons N ll)

class UpTo13Length (ll :: LList)

instance upTo13LengthNil :: UpTo13Length LNil

instance upTo13LengthConsN ::
  UpTo13Length ll =>
  UpTo13Length (N : ll)

instance upTo13LengthCons1 ::
  UpTo13Length ll =>
  UpTo13Length (S : N : ll)

instance upTo13LengthCons2 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : N : ll)

instance upTo13LengthCons3 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : N : ll)

instance upTo13LengthCons4 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : N : ll)

instance upTo13LengthCons5 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : N : ll)

instance upTo13LengthCons6 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : N : ll)

instance upTo13LengthCons7 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : S : N : ll)

instance upTo13LengthCons8 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : S : S : N : ll)

instance upTo13LengthCons9 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : S : S : S : N : ll)

instance upTo13LengthCons10 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : S : S : S : S : N : ll)

instance upTo13LengthCons11 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : S : S : S : S : S : N : ll)

instance upTo13LengthCons12 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : S : S : S : S : S : S : N : ll)

instance upTo13LengthCons13 ::
  UpTo13Length ll =>
  UpTo13Length (S : S : S : S : S : S : S : S : S : S : S : S : S : N : ll)

instance upTo13LengthConsMore ::
  ( UpTo13Length ll
  , TE.Fail (TE.Text "The maximum score length is 13 per line.")
  ) =>
  UpTo13Length (S : S : S : S : S : S : S : S : S : S : S : S : S : S : ll)
