module Nemo.Excepiton where

import Prelude

import Data.Array ((!!))
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Exception (throw)
import Nemo.Types (EmojiMap, MapId, SoundId, Sound)

orErrMsg :: forall a. Either String a -> Effect a
orErrMsg (Right val) = pure val
orErrMsg (Left msg) = throw msg

providedMap :: forall a. Array EmojiMap -> MapId -> (EmojiMap -> Effect a) -> Effect a
providedMap ms mId op =
  case ms !! mId of
    Nothing -> throw $ "MapId " <> show mId <> " does not exist."
    Just m -> op m

providedSound :: forall a. Array Sound -> SoundId -> (Sound -> Effect a) -> Effect a
providedSound ss sId op =
  case ss !! sId of
    Nothing -> throw $ "SoundId " <> show sId <> " does not exist."
    Just s -> op s