module Emo8.Data.Update
  ( Update
  , runUpdate
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, Reader, runReader)
import Data.Newtype (class Newtype, unwrap)

newtype Update st a
  = Update (Reader st a)

derive instance newtypeUpdate :: Newtype (Update st a) _

derive newtype instance functorUpdate :: Functor (Update st)

derive newtype instance applyUpdate :: Apply (Update st)

derive newtype instance applicativeUpdate :: Applicative (Update st)

derive newtype instance bindUpdate :: Bind (Update st)

derive newtype instance monadUpdate :: Monad (Update st)

derive newtype instance monadAskUpdate :: MonadAsk st (Update st)

runUpdate :: forall st s. Update st s -> st -> s
runUpdate = runReader <<< unwrap
