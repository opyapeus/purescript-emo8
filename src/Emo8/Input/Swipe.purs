module Emo8.Input.Swipe
  ( Swipe(..)
  , Vector
  ) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.Tuple (Tuple(..), snd)
import Emo8.Input (class Input, poll)
import Emo8.Input.Touch (Position, Touch)
import Record.Extra (sequenceRecord)
import Signal (Signal, foldp)

type Vector
  = { vx :: Int, vy :: Int }

newtype Swipe
  = Swipe
  { leftVec :: Maybe Vector
  , rightVec :: Maybe Vector
  }

derive instance newtypeSwipe :: Newtype Swipe _

instance inputSwipe :: Input Swipe where
  poll = do
    t :: Signal Touch <- poll
    let
      ut = unwrap <$> t

      init = Tuple Nothing Nothing :: Tuple (Maybe Position) (Maybe Vector)
    pure $ map wrap
      $ sequenceRecord
          { leftVec: foldF init <<< map _.leftPos $ ut
          , rightVec: foldF init <<< map _.rightPos $ ut
          }
    where
    foldF init = map snd <<< foldp (\mtp (Tuple mbp _) -> update mtp mbp) init

update :: Maybe Position -> Maybe Position -> Tuple (Maybe Position) (Maybe Vector)
update mtp mbp = case mtp, mbp of
  Just tp, Just bp -> Tuple mbp (Just $ mkVec bp tp)
  Just _, Nothing -> Tuple mtp (Just zeroVec)
  Nothing, _ -> Tuple Nothing Nothing

mkVec :: Position -> Position -> Vector
mkVec f t = { vx: t.x - f.x, vy: t.y - f.y }

zeroVec :: Vector
zeroVec = { vx: 0, vy: 0 }
