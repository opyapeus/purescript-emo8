module Nemo.Class.Read where

import Prelude
import Data.Either (Either(..))
import Data.Array (filter, head)
import Data.Maybe (Maybe(..))
import Data.String (joinWith)

-- NOTE: Default method implementations
-- https://github.com/purescript/purescript/issues/3067

-- | Read class.
-- | Read method is for parsing raw asset data.
class Show a <= Read a where
  read :: String -> Either String a

-- TODO: REFACTOR: derive from show definition
-- NOTE: BUG?: Uncaught RangeError: Maximum call stack size exceeded
-- defaultRead :: forall a. Read a => Patterns a -> String -> Either String a
defaultRead :: forall a. Show a => Patterns a -> String -> Either String a
defaultRead ps　s = case mPattern of
    Just pattern -> Right pattern
    Nothing -> Left $ joinWith " " ["Sorry.", s, "is not supported."]
    where
        mPattern = head $ filter (\p -> show p == s) ps

type Patterns a = Array a
