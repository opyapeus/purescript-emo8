module Emo8.Util.Resource
  ( EmptyMap
  , emptyMap
  , EmptyScore
  , emptyScore
  ) where

newtype EmptyMap
  = EmptyMap {}

emptyMap :: EmptyMap
emptyMap = EmptyMap {}

newtype EmptyScore
  = EmptyScore {}

emptyScore :: EmptyScore
emptyScore = EmptyScore {}
