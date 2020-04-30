module Emo8.Parser.NConstraint
  ( class ExtractNR
  , class UpToFiveNote
  , kind Label
  , Some
  , None
  , kind LList
  , LNil
  , LCons
  ) where

import Emo8.Parser.NList (NCons, NNil, kind NList)
import Emo8.Parser.Note (Note, Rest, Vacancy)
import Emo8.Parser.SpecChar (Return, Space)

foreign import kind Label

foreign import data Some :: Label

foreign import data None :: Label

foreign import kind LList

foreign import data LNil :: LList

foreign import data LCons :: Label -> LList -> LList

class ExtractNR (nl :: NList) (ll :: LList) | nl -> ll

instance extractNRNil :: ExtractNR NNil LNil

instance extractNRConsNote :: ExtractNR nl ll => ExtractNR (NCons Note nl) (LCons Some ll)

instance extractNRConsReturn :: ExtractNR nl ll => ExtractNR (NCons (Rest Return) nl) (LCons None ll)

instance extractNRConsVacancy :: ExtractNR nl ll => ExtractNR (NCons Vacancy nl) ll

instance extractNRConsSpace :: ExtractNR nl ll => ExtractNR (NCons (Rest Space) nl) ll

class UpToFiveNote (ll :: LList)

instance upToFiveNoteNil :: UpToFiveNote LNil

instance upToFiveNoteConsNone ::
  UpToFiveNote ll =>
  UpToFiveNote (LCons None ll)

instance upToFiveNoteCons1 ::
  UpToFiveNote ll =>
  UpToFiveNote (LCons Some (LCons None ll))

instance upToFiveNoteCons2 ::
  UpToFiveNote ll =>
  UpToFiveNote (LCons Some (LCons Some (LCons None ll)))

instance upToFiveNoteCons3 ::
  UpToFiveNote ll =>
  UpToFiveNote (LCons Some (LCons Some (LCons Some (LCons None ll))))

instance upToFiveNoteCons4 ::
  UpToFiveNote ll =>
  UpToFiveNote (LCons Some (LCons Some (LCons Some (LCons Some (LCons None ll)))))

instance upToFiveNoteCons5 ::
  UpToFiveNote ll =>
  UpToFiveNote (LCons Some (LCons Some (LCons Some (LCons Some (LCons Some (LCons None ll))))))
