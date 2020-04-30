module Emo8.Data.Draw
  ( Draw
  , runDraw
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, ReaderT, runReaderT)
import Data.Newtype (class Newtype, unwrap)
import Effect (Effect)
import Effect.Class (class MonadEffect)

newtype Draw r a
  = Draw (ReaderT r Effect a)

derive instance newtypeDraw :: Newtype (Draw r a) _

derive newtype instance functorDraw :: Functor (Draw r)

derive newtype instance applyDraw :: Apply (Draw r)

derive newtype instance applicativeDraw :: Applicative (Draw r)

derive newtype instance bindDraw :: Bind (Draw r)

derive newtype instance monadDraw :: Monad (Draw r)

derive newtype instance monadAskDraw :: MonadAsk r (Draw r)

derive newtype instance monadEffectDraw :: MonadEffect (Draw r)

runDraw :: forall r a. Draw r a -> r -> Effect a
runDraw = runReaderT <<< unwrap
