module Emo8.Util.Config
  ( defaultConfig
  ) where

import Emo8.Type (Config)

defaultConfig :: Config
defaultConfig =
  { canvasSize:
      { width: 512
      , height: 512
      }
  , retina: true
  }
