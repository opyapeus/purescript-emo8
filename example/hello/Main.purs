module Main where

import Prelude
import Effect (Effect)
import Emo8 (emo8)
import Emo8.Data.Color as C
import Emo8.Data.Emoji as E
import Emo8.Game (class Game)
import Emo8.Game.Draw (cls, emo)
import Emo8.Util.Config (defaultConfig)
import Emo8.Util.Resource (EmptyMap, EmptyScore, emptyMap, emptyScore)

data State
  = Void

instance gameState :: Game State EmptyMap EmptyScore where
  update _ = pure
  draw _ = do
    cls C.maroon
    emo E.hatchingChick 128 192 192
  sound _ = pure unit

main :: Effect Unit
main = emo8 Void emptyMap emptyScore defaultConfig
