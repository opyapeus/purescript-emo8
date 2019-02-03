module Emo8.FFI.TextBaseline where


-- | Enumerates types of text alignment.
import Prelude

import Effect (Effect)
import Effect.Exception.Unsafe (unsafeThrow)
import Graphics.Canvas (Context2D)


-- | Enumerates types of text alignment.
data TextBaseline
  = BaselineTop
  | BaselineHanging
  | BaselineMiddle
  | BaselineAlphabetic
  | BaselineIdeographic
  | BaselineBottom

instance showTextBaseline :: Show TextBaseline where
  show BaselineTop = "BaselineTop"
  show BaselineHanging = "BaselineHanging"
  show BaselineMiddle = "BaselineMiddle"
  show BaselineAlphabetic = "BaselineAlphabetic"
  show BaselineIdeographic = "BaselineIdeographic"
  show BaselineBottom = "BaselineBottom"

foreign import textBaselineImpl :: Context2D -> Effect String

-- | Get the current text alignment.
textBaseline :: Context2D -> Effect TextBaseline
textBaseline ctx = unsafeParseTextBaseline <$> textBaselineImpl ctx
  where
  unsafeParseTextBaseline :: String -> TextBaseline
  unsafeParseTextBaseline "top" = BaselineTop
  unsafeParseTextBaseline "hanging" = BaselineHanging
  unsafeParseTextBaseline "middle" = BaselineMiddle
  unsafeParseTextBaseline "alphabetic" = BaselineAlphabetic
  unsafeParseTextBaseline "ideographic" = BaselineIdeographic
  unsafeParseTextBaseline "bottom" = BaselineBottom
  unsafeParseTextBaseline align = unsafeThrow $ "invalid TextBaseline: " <> align
  -- ^ dummy to silence compiler warnings

foreign import setTextBaselineImpl :: Context2D -> String -> Effect Unit

-- | Set the current text alignment.
setTextBaseline :: Context2D -> TextBaseline -> Effect Unit
setTextBaseline ctx textbaseline =
  setTextBaselineImpl ctx (toString textbaseline)
  where
    toString BaselineTop = "top"
    toString BaselineHanging = "hanging"
    toString BaselineMiddle = "middle"
    toString BaselineAlphabetic = "alphabetic"
    toString BaselineIdeographic = "ideographic"
    toString BaselineBottom = "bottom"
