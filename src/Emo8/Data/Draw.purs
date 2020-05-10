module Emo8.Data.Draw
  ( Draw
  , runDraw
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, ReaderT, runReaderT)
import Data.Newtype (class Newtype, unwrap)
import Effect (Effect)
import Effect.Class (class MonadEffect)

newtype Draw dt a
  = Draw (ReaderT dt Effect a)

derive instance newtypeDraw :: Newtype (Draw dt a) _

derive newtype instance functorDraw :: Functor (Draw dt)

derive newtype instance applyDraw :: Apply (Draw dt)

derive newtype instance applicativeDraw :: Applicative (Draw dt)

derive newtype instance bindDraw :: Bind (Draw dt)

derive newtype instance monadDraw :: Monad (Draw dt)

derive newtype instance monadAskDraw :: MonadAsk dt (Draw dt)

derive newtype instance monadEffectDraw :: MonadEffect (Draw dt)

runDraw :: forall dt a. Draw dt a -> dt -> Effect a
runDraw = runReaderT <<< unwrap
