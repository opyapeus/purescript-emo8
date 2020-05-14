module Emo8.Data.Update
  ( UpdateR
  , runUpdateR
  ) where

import Prelude
import Control.Monad.Reader (class MonadAsk, Reader, runReader)
import Data.Newtype (class Newtype, unwrap)

newtype UpdateR st a
  = UpdateR (Reader st a)

derive instance newtypeUpdateR :: Newtype (UpdateR st a) _

derive newtype instance functorUpdateR :: Functor (UpdateR st)

derive newtype instance applyUpdateR :: Apply (UpdateR st)

derive newtype instance applicativeUpdateR :: Applicative (UpdateR st)

derive newtype instance bindUpdateR :: Bind (UpdateR st)

derive newtype instance monadUpdateR :: Monad (UpdateR st)

derive newtype instance monadAskUpdateR :: MonadAsk st (UpdateR st)

runUpdateR :: forall st s. UpdateR st s -> st -> s
runUpdateR = runReader <<< unwrap
