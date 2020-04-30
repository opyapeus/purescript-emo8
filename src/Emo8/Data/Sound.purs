module Emo8.Data.Sound
  ( Sound
  , runSound
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, ReaderT, runReaderT)
import Data.Newtype (class Newtype, unwrap)
import Effect (Effect)
import Effect.Class (class MonadEffect)

newtype Sound r a
  = Sound (ReaderT r Effect a)

derive instance newtypeSound :: Newtype (Sound r a) _

derive newtype instance functorSound :: Functor (Sound r)

derive newtype instance applySound :: Apply (Sound r)

derive newtype instance applicativeSound :: Applicative (Sound r)

derive newtype instance bindSound :: Bind (Sound r)

derive newtype instance monadSound :: Monad (Sound r)

derive newtype instance monadAskSound :: MonadAsk r (Sound r)

derive newtype instance monadEffectSound :: MonadEffect (Sound r)

runSound :: forall r a. Sound r a -> r -> Effect a
runSound = runReaderT <<< unwrap
