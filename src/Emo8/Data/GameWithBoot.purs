module Emo8.Data.GameWithBoot where

import Prelude
import Data.Bifunctor (class Bifunctor, lmap, rmap)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Emo8.Data.Input (Input)
import Emo8.Game (class Game)
import Emo8.GameBoot (class GameBoot, finished)
import Emo8.Util.Type (StateRes)
import Signal (Signal)

data GameWithBoot a b
  = GameWithBoot a b

instance bifunctorGameWithBoot :: Bifunctor GameWithBoot where
  bimap f g (GameWithBoot a b) = GameWithBoot (f a) (g b)

switchOp ::
  forall s dr sr s' dr' sr'.
  Game s dr sr =>
  GameBoot s' dr' sr' =>
  (StateRes s dr sr -> Effect Unit) ->
  (StateRes s' dr' sr' -> Effect Unit) ->
  Signal (GameWithBoot (StateRes s dr sr) (StateRes s' dr' sr')) -> Signal (Effect Unit)
switchOp op op' =
  map \(GameWithBoot st st'@(Tuple s' _)) ->
    if finished s' then
      op st
    else
      op' st'

switchFoldOp ::
  forall s dr sr s' dr' sr'.
  Game s dr sr =>
  GameBoot s' dr' sr' =>
  (Input -> StateRes s dr sr -> StateRes s dr sr) ->
  (Input -> StateRes s' dr' sr' -> StateRes s' dr' sr') ->
  Input -> GameWithBoot (StateRes s dr sr) (StateRes s' dr' sr') -> GameWithBoot (StateRes s dr sr) (StateRes s' dr' sr')
switchFoldOp op op' i st@(GameWithBoot _ (Tuple s' _)) =
  if finished s' then
    lmap (op i) st
  else
    rmap (op' i) st
