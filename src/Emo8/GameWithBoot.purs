module Emo8.GameWithBoot
  ( GameWithBoot(..)
  , switchOp
  , switchFoldOp
  ) where

import Prelude
import Data.Bifunctor (class Bifunctor, lmap, rmap)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Emo8.Data.Input (Input)
import Emo8.Game (class Game)
import Emo8.GameBoot (class GameBoot, finished)
import Emo8.Util.Type (StateRes)

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
  GameWithBoot (StateRes s dt st) (StateRes s' dt' st') -> Effect Unit
switchOp op op' gwb@(GameWithBoot sr sr'@(Tuple s' _))
  | finished s' = op sr
  | otherwise = op' sr'

switchFoldOp ::
  forall s dt st s' dt' st'.
  Game s dt st =>
  GameBoot s' dt' st' =>
  (Input -> StateRes s dt st -> StateRes s dt st) ->
  (Input -> StateRes s' dt' st' -> StateRes s' dt' st') ->
  Input -> GameWithBoot (StateRes s dt st) (StateRes s' dt' st') -> GameWithBoot (StateRes s dt st) (StateRes s' dt' st')
switchFoldOp op op' i gwb@(GameWithBoot _ (Tuple s' _))
  | finished s' = lmap (op i) gwb
  | otherwise = rmap (op' i) gwb
