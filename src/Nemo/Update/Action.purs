module Nemo.Update.Action where

import Prelude

import Control.Monad.Free (Free, liftF)
import Control.Monad.Gen (Size)
import Nemo.Data.Emoji (Emoji)
import Nemo.Types (X, Y, MapId)

type Update = Free UpdateF

data UpdateF n
    = RandomInt Int Int (Int -> n)
    | RandomNumber Number Number (Number -> n)
    | IsMapCollide MapId Size (Array Emoji) Size X Y (Boolean -> n)

randomInt :: Int -> Int -> Update Int
randomInt min max = liftF $ RandomInt min max identity

randomNumber :: Number -> Number -> Update Number
randomNumber min max = liftF $ RandomNumber min max identity

isMapCollide :: MapId -> Size -> Array Emoji -> Size -> X -> Y -> Update Boolean
isMapCollide mId mSize walls size x y = liftF $ IsMapCollide mId mSize walls size x y identity
