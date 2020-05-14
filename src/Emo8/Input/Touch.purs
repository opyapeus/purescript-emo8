module Emo8.Input.Touch
  ( Touch(..)
  , Position
  ) where

import Prelude
import Data.Array as A
import Data.Maybe (Maybe)
import Data.Newtype (class Newtype, wrap)
import Emo8.Input (class Input)
import Record.Extra (sequenceRecord)
import Signal.DOM (touch, windowDimensions)

type Position
  = { x :: Int, y :: Int }

newtype Touch
  = Touch
  { leftPos :: Maybe Position
  , rightPos :: Maybe Position
  }

derive instance newtypeTouch :: Newtype Touch _

instance inputTouch :: Input Touch where
  poll = do
    ts <- touch
    dim <- windowDimensions
    pure <<< map wrap
      $ sequenceRecord
          { leftPos: oneLeft <$> dim <*> ts
          , rightPos: oneRight <$> dim <*> ts
          }
    where
    oneLeft dim = oneF dim.w (<)

    oneRight dim = oneF dim.w (>)

    oneF w comp =
      map
        ( \t ->
            { x: t.screenX, y: t.screenY }
        )
        <<< A.head
        <<< A.filter
            ( \t -> t.screenX `comp` (w / 2)
            )
