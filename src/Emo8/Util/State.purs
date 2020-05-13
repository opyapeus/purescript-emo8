module Emo8.Util.State
  ( defaultEncode
  , defaultDecode
  ) where

import Control.Monad.Except (ExceptT)
import Data.Generic.Rep (class Generic)
import Data.Identity (Identity)
import Data.List.Types (NonEmptyList)
import Foreign.Generic (class GenericDecode, class GenericEncode, Foreign, ForeignError, defaultOptions, genericDecode, genericEncode)

defaultEncode ::
  forall a b.
  Generic a b =>
  GenericEncode b =>
  a -> Foreign
defaultEncode = genericEncode defaultOptions

defaultDecode ::
  forall a b.
  Generic a b =>
  GenericDecode b =>
  Foreign -> ExceptT (NonEmptyList ForeignError) Identity a
defaultDecode = genericDecode defaultOptions
