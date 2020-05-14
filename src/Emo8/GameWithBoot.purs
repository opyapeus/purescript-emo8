module Emo8.GameWithBoot
  ( GameWithBoot(..)
  , switchOp
  , switchFoldOp
  ) where

import Prelude
import Data.Bifunctor (class Bifunctor, lmap, rmap)
import Effect (Effect)
import Emo8.Data.Input (Input)
import Emo8.Game (class Game)
import Emo8.GameBoot (class GameBoot, finished)

data GameWithBoot a b
  = GameWithBoot a b

instance bifunctorGameWithBoot :: Bifunctor GameWithBoot where
  bimap f g (GameWithBoot a b) = GameWithBoot (f a) (g b)

switchOp ::
  forall s s'.
  Game s =>
  GameBoot s' =>
  (s -> Effect Unit) ->
  (s' -> Effect Unit) ->
  GameWithBoot s s' -> Effect Unit
switchOp op op' gwb@(GameWithBoot s s')
  | finished s' = op s
  | otherwise = op' s'

switchFoldOp ::
  forall s s'.
  Game s =>
  GameBoot s' =>
  (Input -> s -> s) ->
  (Input -> s' -> s') ->
  Input -> GameWithBoot s s' -> GameWithBoot s s'
switchFoldOp op op' i gwb@(GameWithBoot _ s')
  | finished s' = lmap (op i) gwb
  | otherwise = rmap (op' i) gwb
