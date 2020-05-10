module Emo8.Resource
  ( class GetResource
  , get
  ) where

import Data.List as L
import Data.Newtype (class Newtype)
import Emo8.Data.Emoji (Emoji)
import Emo8.Data.Note (Note)
import Emo8.Data.Update (Update)
import Emo8.Game.Update (getMap, getScore)

class GetResource a dt st r | a -> r where
  get :: forall r'. Newtype r { | r' } => ({ | r' } -> a) -> Update dt st a

instance getResourceMap :: GetResource (L.List (L.List Emoji)) dt st dt where
  get = getMap

instance getResourceScore :: GetResource (L.List (L.List Note)) dt st st where
  get = getScore
