module Emo8.GameDev
  ( class GameDev
  , saveLocal
  , saveState
  , loadStateWithDefault
  ) where

import Prelude
import Control.Monad.Except (runExcept)
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Foldable (for_)
import Data.List as L
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class.Console (log)
import Emo8.FFI.LocalStorage (LocalKey, getItem, setItem)
import Emo8.Game (class Game)
import Foreign (MultipleErrors)
import Foreign.Generic (class Decode, class Encode, decodeJSON, encodeJSON)

class
  ( Game s dr sr
  , Encode s
  , Decode s
  ) <= GameDev s dr sr | s -> dr sr where
  saveLocal :: s -> L.List LocalKey

data LoadError
  = DecodeError MultipleErrors
  | KeyNotFoundError String

instance showLoadError :: Show LoadError where
  show (DecodeError es) = show es
  show (KeyNotFoundError s) = show s

saveState :: forall s dr sr. GameDev s dr sr => s -> Effect Unit
saveState s = for_ keys \k -> setItem k json
  where
  keys = saveLocal s

  json = encodeJSON s

loadStateWithDefault :: forall s dr sr. GameDev s dr sr => s -> LocalKey -> Effect s
loadStateWithDefault s key = do
  es <- loadState key
  case es of
    Right s' -> do
      log "state loaded"
      pure s'
    Left err -> do
      case err of
        DecodeError me -> log $ show me
        KeyNotFoundError e -> log e
      pure s

loadState :: forall s dr sr. GameDev s dr sr => LocalKey -> Effect (Either LoadError s)
loadState key = do
  mJson <- getItem key
  pure
    $ case mJson of
        Just json -> lmap DecodeError <<< runExcept <<< decodeJSON $ json
        Nothing -> Left $ KeyNotFoundError "key not found"
