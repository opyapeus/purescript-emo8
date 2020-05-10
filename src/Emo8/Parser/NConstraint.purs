module Emo8.Parser.NConstraint
  ( class NConstraint
  , class ToNList
  , class MatchNote
  , class ExtractNR
  , class UpToThreeNote
  , class ExtractNVR
  , class UpToElevenLength
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
  , UpToElevenLength ll'
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
  UpToThreeNote (LCons N ll)

instance upToThreeNoteCons1 ::
  UpToThreeNote ll =>
  UpToThreeNote (LCons S (LCons N ll))

instance upToThreeNoteCons2 ::
  UpToThreeNote ll =>
  UpToThreeNote (LCons S (LCons S (LCons N ll)))

instance upToThreeNoteCons3 ::
  UpToThreeNote ll =>
  UpToThreeNote (LCons S (LCons S (LCons S (LCons N ll))))

instance upToThreeNoteConsMore ::
  ( UpToThreeNote ll
  , TE.Fail (TE.Text "The maximum note count is 3 per line.")
  ) =>
  UpToThreeNote (LCons S (LCons S (LCons S (LCons S ll))))

class ExtractNVR (nl :: NList) (ll :: LList) | nl -> ll

instance extractNVRNil :: ExtractNVR NNil LNil

instance extractNVRConsNote :: ExtractNVR nl ll => ExtractNVR (NCons Note nl) (LCons S ll)

instance extractNVRConsVacancy :: ExtractNVR nl ll => ExtractNVR (NCons Vacancy nl) (LCons S ll)

instance extractNVRConsSpace :: ExtractNVR nl ll => ExtractNVR (NCons (Rest Space) nl) ll

instance extractNVRConsReturn :: ExtractNVR nl ll => ExtractNVR (NCons (Rest Return) nl) (LCons N ll)

class UpToElevenLength (ll :: LList)

instance upToElevenLengthNil :: UpToElevenLength LNil

instance upToElevenLengthConsN ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons N ll)

instance upToElevenLengthCons1 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons N ll))

instance upToElevenLengthCons2 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons N ll)))

instance upToElevenLengthCons3 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons N ll))))

instance upToElevenLengthCons4 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons N ll)))))

instance upToElevenLengthCons5 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons N ll))))))

instance upToElevenLengthCons6 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons N ll)))))))

instance upToElevenLengthCons7 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons N ll))))))))

instance upToElevenLengthCons8 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons N ll)))))))))

instance upToElevenLengthCons9 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons N ll))))))))))

instance upToElevenLengthCons10 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons N ll)))))))))))

instance upToElevenLengthCons11 ::
  UpToElevenLength ll =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons N ll))))))))))))

instance upToElevenLengthConsMore ::
  ( UpToElevenLength ll
  , TE.Fail (TE.Text "The maximum score length is 11 per line.")
  ) =>
  UpToElevenLength (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S (LCons S ll))))))))))))
