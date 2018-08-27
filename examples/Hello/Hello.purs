module Hello where

import Prelude

import Effect (Effect)
import Nemo (nemo)
import Nemo.Class.Game (class Game)
import Nemo.Data.Color (Color(..))
import Nemo.Data.Emoji (Emoji(..))
import Nemo.Draw (cls, emo)
import Nemo.Utils (emptyAsset)


data Empty = Void 

instance gameState :: Game Empty where
  update _ = const

  draw _ =
    [ cls Maroon
    , emo HatchingChick 256 384 384
    ]

  sound _ = []

main :: Effect Unit
main = nemo Void emptyAsset
