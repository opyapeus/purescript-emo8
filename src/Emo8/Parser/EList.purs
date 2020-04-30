module Emo8.Parser.EList
  ( kind EList
  , ENil
  , ECons
  , ELProxy(..)
  ) where

import Emo8.Parser.Emoji (kind Emoji)

foreign import kind EList

foreign import data ENil :: EList

foreign import data ECons :: Emoji -> EList -> EList

data ELProxy (el :: EList)
  = ELProxy
