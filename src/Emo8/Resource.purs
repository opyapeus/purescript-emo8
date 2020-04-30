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

class GetResource a dr sr r | a -> r where
  get :: forall r'. Newtype r { | r' } => ({ | r' } -> a) -> Update dr sr a

instance getResourceMap :: GetResource (L.List (L.List Emoji)) dr sr dr where
  get = getMap

instance getResourceScore :: GetResource (L.List (L.List Note)) dr sr sr where
  get = getScore
