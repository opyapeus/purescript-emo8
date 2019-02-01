module Emo.FFI.LocalStorage
    ( LocalKey(..)
    , setItem
    , removeItem
    , getItem
    ) where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)

newtype LocalKey = LocalKey String

foreign import setItemImpl :: String -> String -> Effect Unit
foreign import removeItemImpl :: String -> Effect Unit
-- HACK: return Maybe type
foreign import getItemImpl :: Maybe String -> (String -> Maybe String) -> String -> Effect (Maybe String)

setItem :: LocalKey -> String -> Effect Unit
setItem (LocalKey k) = setItemImpl k

removeItem :: LocalKey -> Effect Unit
removeItem (LocalKey k) = removeItemImpl k

getItem :: LocalKey -> Effect (Maybe String)
getItem (LocalKey k) = getItemImpl Nothing Just k