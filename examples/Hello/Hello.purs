module Hello where

import Prelude

import Effect (Effect)
import Nemo (nemo)
import Nemo.Class.Game (class Game)
import Nemo.Data.Color (Color(..))
import Nemo.Data.Emoji as E
import Nemo.Draw.Action (cls, emo)
import Nemo.Utils (emptyAsset)


data Empty = Void 

instance gameState :: Game Empty where
  update _ = pure

  draw _ = do
    cls Maroon
    emo E.hatchingChick 256 384 384

  sound _ = pure unit

main :: Effect Unit
main = nemo Void emptyAsset

