module Emo8.Input.Direction
  ( Direction(..)
  ) where

import Prelude
import Data.Int (toNumber)
import Data.Maybe (Maybe)
import Data.Newtype (class Newtype, unwrap, wrap)
import Emo8.Data.Dir (Dir(..))
import Emo8.Input (class Input, poll)
import Emo8.Input.Swipe (Swipe, Vector)
import Math (atan2, pi)
import Record.Extra (sequenceRecord)
import Signal (Signal)

newtype Direction
  = Direction
  { leftDir :: Maybe Dir
  , rightDir :: Maybe Dir
  }

derive instance newtypeDirection :: Newtype Direction _

instance inputDirection :: Input Direction where
  poll = do
    sw :: Signal Swipe <- poll
    let
      usw = unwrap <$> sw
    pure $ map wrap
      $ sequenceRecord
          { leftDir: map (map vecToDir) <<< map _.leftVec $ usw
          , rightDir: map (map vecToDir) <<< map _.rightVec $ usw
          }

vecToDir :: Vector -> Dir
vecToDir { vx, vy } = f arg
  where
  vy' = -vy

  arg = atan2 (toNumber vy') (toNumber vx) -- NOTE: atan2 0.0 0.0 = 0.0

  f rad
    | rad == 0.0 = NoDirection
    | rad < pi * -7.0 / 8.0 = West
    | rad < pi * -5.0 / 8.0 = Southwest
    | rad < pi * -3.0 / 8.0 = South
    | rad < pi * -1.0 / 8.0 = Southeast
    | rad < pi * 1.0 / 8.0 = East
    | rad < pi * 3.0 / 8.0 = Northeast
    | rad < pi * 5.0 / 8.0 = North
    | rad < pi * 7.0 / 8.0 = Northwest
    | otherwise = West
