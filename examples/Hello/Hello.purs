module Hello where

import Prelude

import Effect (Effect)
import Emo8 (emo8)
import Emo8.Action.Draw (cls, emo)
import Emo8.Class.Game (class Game)
import Emo8.Data.Color (Color(..))
import Emo8.Data.Emoji as E
import Emo8.Utils (defaultMonitorSize, emptyAsset)


data Empty = Void 

instance gameState :: Game Empty where
  update _ = pure

  draw _ = do
    cls Maroon
    emo E.hatchingChick 128 192 192

  sound _ = pure unit

main :: Effect Unit
main = emo8 Void emptyAsset defaultMonitorSize

