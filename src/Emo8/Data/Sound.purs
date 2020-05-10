module Emo8.Data.Sound
  ( Sound
  , runSound
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, ReaderT, runReaderT)
import Data.Newtype (class Newtype, unwrap)
import Effect (Effect)
import Effect.Class (class MonadEffect)

newtype Sound st a
  = Sound (ReaderT st Effect a)

derive instance newtypeSound :: Newtype (Sound st a) _

derive newtype instance functorSound :: Functor (Sound st)

derive newtype instance applySound :: Apply (Sound st)

derive newtype instance applicativeSound :: Applicative (Sound st)

derive newtype instance bindSound :: Bind (Sound st)

derive newtype instance monadSound :: Monad (Sound st)

derive newtype instance monadAskSound :: MonadAsk st (Sound st)

derive newtype instance monadEffectSound :: MonadEffect (Sound st)

runSound :: forall st a. Sound st a -> st -> Effect a
runSound = runReaderT <<< unwrap
