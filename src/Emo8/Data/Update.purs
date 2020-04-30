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

newtype Update dr sr a
  = Update (State (Resource dr sr) a)

derive instance newtypeUpdate :: Newtype (Update dr sr a) _

derive newtype instance functorUpdate :: Functor (Update dr sr)

derive newtype instance applyUpdate :: Apply (Update dr sr)

derive newtype instance applicativeUpdate :: Applicative (Update dr sr)

derive newtype instance bindUpdate :: Bind (Update dr sr)

derive newtype instance monadUpdate :: Monad (Update dr sr)

derive newtype instance monadStateUpdate :: MonadState (Resource dr sr) (Update dr sr)

runUpdate :: forall dr sr s. Update dr sr s -> (Resource dr sr) -> Tuple s (Resource dr sr)
runUpdate = runState <<< unwrap

newtype Resource dr sr
  = Resource
  { draw :: dr
  , sound :: sr
  , config :: Config
  }

getDraw :: forall dr sr. Update dr sr dr
getDraw = do
  Resource r <- get
  pure r.draw

putDraw :: forall dr sr. dr -> Update dr sr Unit
putDraw d = do
  Resource r <- get
  put <<< Resource $ r { draw = d }

getSound :: forall dr sr. Update dr sr sr
getSound = do
  Resource r <- get
  pure r.sound

putSound :: forall dr sr. sr -> Update dr sr Unit
putSound s = do
  Resource r <- get
  put <<< Resource $ r { sound = s }

getConfig :: forall dr sr. Update dr sr Config
getConfig = do
  Resource r <- get
  pure r.config
