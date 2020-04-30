module Emo8.Data.Dir
  ( Dir(..)
  , arounds
  ) where

import Prelude

data Dir
  = Northwest
  | North
  | Northeast
  | West
  | NoDirection
  | East
  | Southwest
  | South
  | Southeast

derive instance eqDir :: Eq Dir

arounds ::
  { north :: Array Dir
  , west :: Array Dir
  , south :: Array Dir
  , east :: Array Dir
  }
arounds =
  { north: [ Northwest, North, Northeast ]
  , west: [ Northwest, West, Southwest ]
  , south: [ Southwest, South, Southeast ]
  , east: [ Southeast, East, Northeast ]
  }
