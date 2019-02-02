module Emo8.Data.GameWithBoot where

import Prelude

import Data.Bifoldable (class Bifoldable)
import Data.Bifunctor (class Bifunctor)
import Data.Bitraversable (class Bitraversable)
import Effect (Effect)
import Emo8.Class.Game (class Game)
import Emo8.Class.GameBoot (class GameBoot, finished)
import Signal (Signal)

data GameWithBoot a b = GameWithBoot a b

instance bifunctorGameWithBoot :: Bifunctor GameWithBoot where
  bimap f g (GameWithBoot a b) = GameWithBoot (f a) (g b)
instance bifoldableGameWithBoot :: Bifoldable GameWithBoot where
  bifoldr f2 g2 u (GameWithBoot a b) = f2 a (g2 b u)
  bifoldl f2 g2 u (GameWithBoot a b) = g2 (f2 u a) b
  bifoldMap f g (GameWithBoot a b) = f a <> g b
instance bitraversableGameWithBoot :: Bitraversable GameWithBoot where
  bitraverse f g (GameWithBoot a b) = GameWithBoot <$> f a <*> g b
  bisequence (GameWithBoot fa fb) = GameWithBoot <$> fa <*> fb

switchOp :: forall s s'. Game s => GameBoot s' => (s -> Effect Unit) -> (s' -> Effect Unit) -> Signal (GameWithBoot s s') -> Signal (Effect Unit)
switchOp op op' = map \(GameWithBoot s s') -> if finished s' then op s else op' s'
