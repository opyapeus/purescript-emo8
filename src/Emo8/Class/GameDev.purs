module Emo8.Class.GameDev
    ( class GameDev
    , saveLocal
    , saveState
    , loadStateWithDefault 
    ) where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Traversable (for_)
import Effect (Effect)
import Emo8.Class.Game (class Game)
import Emo8.FFI.LocalStorage (LocalKey, getItem, setItem)
import Foreign (MultipleErrors)
import Foreign.Class (class Decode, class Encode)
import Foreign.Generic (decodeJSON, encodeJSON)

class (Game s, Encode s, Decode s) <= GameDev s where
    saveLocal :: s -> Array LocalKey

data LoadError
    = DecodeError MultipleErrors
    | KeyNotFoundError String

saveState :: forall s. GameDev s => s -> Effect Unit
saveState s = case saveLocal s of
    [] -> pure unit
    keys -> let json = encodeJSON s in for_ keys \k -> setItem k json

loadStateWithDefault :: forall s. GameDev s => s -> LocalKey-> Effect s
loadStateWithDefault s key = do
    es <- loadState key
    case es of
        Right s' -> pure s'
        Left _ -> pure s

loadState :: forall s. GameDev s => LocalKey-> Effect (Either LoadError s)
loadState key = do
    mJson <- getItem key
    pure $ case mJson of
        Just json -> lmap DecodeError <<< runExcept <<< decodeJSON $ json
        Nothing -> Left $ KeyNotFoundError "key not found."
