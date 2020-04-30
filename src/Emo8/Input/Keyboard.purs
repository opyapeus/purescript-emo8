module Emo8.Input.Keyboard
  ( Keyboard(..)
  ) where

import Prelude
import Data.Newtype (class Newtype)
import Emo8.Data.Input (InputRow)
import Emo8.Data.Key (Key(..), keyToCodeNum)
import Emo8.Input (class Input)
import Record.Extra (mapRecord, sequenceRecord)
import Signal.DOM (keyPressed)

newtype Keyboard
  = Keyboard { | InputRow }

derive instance newtypeKeyboard :: Newtype Keyboard _

instance inputKeyboard :: Input Keyboard where
  poll =
    h <<< g <<< mapRecord f
      $ { isUp: Up
        , isLeft: Left
        , isDown: Down
        , isRight: Right
        , isW: W
        , isA: A
        , isS: S
        , isD: D
        }
    where
    f = keyPressed <<< keyToCodeNum

    g = map sequenceRecord <<< sequenceRecord

    h = map (map Keyboard)
