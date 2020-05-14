module Emo8.Data.Draw
  ( DrawR
  , runDrawR
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, ReaderT, runReaderT)
import Data.Newtype (class Newtype, unwrap)
import Effect (Effect)
import Effect.Class (class MonadEffect)

newtype DrawR dt a
  = DrawR (ReaderT dt Effect a)

derive instance newtypeDrawR :: Newtype (DrawR dt a) _

derive newtype instance functorDrawR :: Functor (DrawR dt)

derive newtype instance applyDrawR :: Apply (DrawR dt)

derive newtype instance applicativeDrawR :: Applicative (DrawR dt)

derive newtype instance bindDrawR :: Bind (DrawR dt)

derive newtype instance monadDrawR :: Monad (DrawR dt)

derive newtype instance monadAskDrawR :: MonadAsk dt (DrawR dt)

derive newtype instance monadEffectDrawR :: MonadEffect (DrawR dt)

runDrawR :: forall dt a. DrawR dt a -> dt -> Effect a
runDrawR = runReaderT <<< unwrap
