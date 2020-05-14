module Emo8.Data.Sound
  ( SoundR
  , runSoundR
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, ReaderT, runReaderT)
import Data.Newtype (class Newtype, unwrap)
import Effect (Effect)
import Effect.Class (class MonadEffect)

newtype SoundR st a
  = SoundR (ReaderT st Effect a)

derive instance newtypeSoundR :: Newtype (SoundR st a) _

derive newtype instance functorSoundR :: Functor (SoundR st)

derive newtype instance applySoundR :: Apply (SoundR st)

derive newtype instance applicativeSoundR :: Applicative (SoundR st)

derive newtype instance bindSoundR :: Bind (SoundR st)

derive newtype instance monadSoundR :: Monad (SoundR st)

derive newtype instance monadAskSoundR :: MonadAsk st (SoundR st)

derive newtype instance monadEffectSoundR :: MonadEffect (SoundR st)

runSoundR :: forall st a. SoundR st a -> st -> Effect a
runSoundR = runReaderT <<< unwrap
