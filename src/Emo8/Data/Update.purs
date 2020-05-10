module Emo8.Data.Update
  ( Update
  , runUpdate
  , Resource(..)
  , getDraw
  , putDraw
  , getSound
  , putSound
  , getConfig
  ) where

import Prelude
import Control.Monad.State (class MonadState, State, get, put, runState)
import Data.Newtype (class Newtype, unwrap)
import Data.Tuple (Tuple)
import Emo8.Type (Config)

newtype Update dt st a
  = Update (State (Resource dt st) a)

derive instance newtypeUpdate :: Newtype (Update dt st a) _

derive newtype instance functorUpdate :: Functor (Update dt st)

derive newtype instance applyUpdate :: Apply (Update dt st)

derive newtype instance applicativeUpdate :: Applicative (Update dt st)

derive newtype instance bindUpdate :: Bind (Update dt st)

derive newtype instance monadUpdate :: Monad (Update dt st)

derive newtype instance monadStateUpdate :: MonadState (Resource dt st) (Update dt st)

runUpdate :: forall dt st s. Update dt st s -> (Resource dt st) -> Tuple s (Resource dt st)
runUpdate = runState <<< unwrap

newtype Resource dt st
  = Resource
  { draw :: dt
  , sound :: st
  , config :: Config
  }

getDraw :: forall dt st. Update dt st dt
getDraw = do
  Resource r <- get
  pure r.draw

putDraw :: forall dt st. dt -> Update dt st Unit
putDraw d = do
  Resource r <- get
  put <<< Resource $ r { draw = d }

getSound :: forall dt st. Update dt st st
getSound = do
  Resource r <- get
  pure r.sound

putSound :: forall dt st. st -> Update dt st Unit
putSound s = do
  Resource r <- get
  put <<< Resource $ r { sound = s }

getConfig :: forall dt st. Update dt st Config
getConfig = do
  Resource r <- get
  pure r.config
