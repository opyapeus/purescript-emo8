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
  forall s dt st s' dt' st'.
  Game s dt st =>
  GameBoot s' dt' st' =>
  (StateRes s dt st -> Effect Unit) ->
  (StateRes s' dt' st' -> Effect Unit) ->
  Signal (GameWithBoot (StateRes s dt st) (StateRes s' dt' st')) -> Signal (Effect Unit)
switchOp op op' =
  map \(GameWithBoot st st'@(Tuple s' _)) ->
    if finished s' then
      op st
    else
      op' st'

switchFoldOp ::
  forall s dt st s' dt' st'.
  Game s dt st =>
  GameBoot s' dt' st' =>
  (Input -> StateRes s dt st -> StateRes s dt st) ->
  (Input -> StateRes s' dt' st' -> StateRes s' dt' st') ->
  Input -> GameWithBoot (StateRes s dt st) (StateRes s' dt' st') -> GameWithBoot (StateRes s dt st) (StateRes s' dt' st')
switchFoldOp op op' i st@(GameWithBoot _ (Tuple s' _)) =
  if finished s' then
    lmap (op i) st
  else
    rmap (op' i) st
