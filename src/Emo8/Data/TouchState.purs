module Emo8.Data.TouchState
  ( TouchState(..)
  ) where
  
import Prelude

import Data.Maybe (Maybe(..))
import Emo8.Class.Input (class Input, poll)
import Emo8.Data.TouchData (TouchData(..), TouchPosition)
import Signal (Signal, foldp)

newtype TouchState = TouchState
  { leftBasePos :: Maybe TouchPosition
  , rightBasePos :: Maybe TouchPosition
  }

instance inputTouchState :: Input TouchState where
  poll = do
    touchDataSig <- poll
    pure $ mkTouchStateSig touchDataSig

mkTouchStateSig :: Signal TouchData -> Signal TouchState
mkTouchStateSig = foldp updateTouchState initialTouchState

initialTouchState :: TouchState
initialTouchState = TouchState
  { leftBasePos: Nothing
  , rightBasePos: Nothing
  }

updateTouchState :: TouchData -> TouchState -> TouchState
updateTouchState (TouchData td) (TouchState ts) =
  TouchState
    { leftBasePos: nextLeftBasePos
    , rightBasePos: nextRightBasePos
    }
  where
    nextLeftBasePos = updateBasePos ts.leftBasePos td.leftPos
    nextRightBasePos = updateBasePos ts.rightBasePos td.rightPos

updateBasePos :: Maybe TouchPosition -> Maybe TouchPosition -> Maybe TouchPosition
updateBasePos bp tp = case bp, tp of
  Just p, Just _ -> Just p
  Just _, Nothing -> Nothing
  Nothing, mp -> mp
