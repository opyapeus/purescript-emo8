module Emo8.Game.Draw
  ( Draw'
  , DrawContext
  , cls
  , emo
  , emo'
  , emor
  , emor'
  , emap
  ) where

import Prelude
import Control.Monad.Reader as Reader
import Data.FoldableWithIndex (traverseWithIndex_)
import Data.Int (toNumber)
import Data.List as L
import Data.Newtype (class Newtype, unwrap)
import Data.String (joinWith)
import Effect (Effect)
import Effect.Class (liftEffect)
import Emo8.Data.Color (Color)
import Emo8.Data.Draw (Draw)
import Emo8.Data.Emoji (Emoji, japaneseVacancyButton)
import Emo8.FFI.TextBaseline (TextBaseline(..), setTextBaseline)
import Emo8.Parser.Type (EmojiMap)
import Emo8.Type (Rect, Size, X, Y, Angle)
import Graphics.Canvas (Context2D, fillRect, fillText, restore, rotate, save, scale, setFillStyle, setFont, translate)
import Math (pi)

-- | Emo8 draw monad which does some draw operations.
type Draw' dt
  = Draw (DrawContext dt)

type DrawContext dt
  = { ctx :: Context2D
    , resource :: dt
    , canvasSize :: Rect
    }

-- | Fill the entire canvas with the specified color.
cls :: forall dt. Color -> Draw' dt Unit
cls c = do
  r <- Reader.ask
  localDraw r.ctx \ctx -> do
    setFillStyle ctx (show c)
    fillRect ctx
      { x: 0.0
      , y: 0.0
      , width: toNumber r.canvasSize.width
      , height: toNumber r.canvasSize.height
      }

-- | Draw the emoji with the specified emoji, size, x and y.
-- |
-- | The origin of x and y is the bottom left.
emo :: forall dt. Emoji -> Size -> X -> Y -> Draw' dt Unit
emo e size x y = do
  r <- Reader.ask
  let
    y' = toNumber $ r.canvasSize.height - y
  localDraw r.ctx \c -> do
    setFont c (sizeToFont size')
    fillText c (show e) x' y'
  where
  size' = toNumber size

  x' = toNumber x

-- | The mirror version of `emo`.
emo' :: forall dt. Emoji -> Size -> X -> Y -> Draw' dt Unit
emo' e size x y = do
  r <- Reader.ask
  let
    y' = toNumber $ r.canvasSize.height - y
  localDraw r.ctx \c -> do
    setFont c (sizeToFont size')
    translate c { translateX: x' + half, translateY: y' - half }
    scale c { scaleX: -1.0, scaleY: 1.0 }
    fillText c (show e) (-half) half
  where
  size' = toNumber size

  half = size' / 2.0

  x' = toNumber x

-- | The rotation version of `emo`.
emor :: forall dt. Angle -> Emoji -> Size -> X -> Y -> Draw' dt Unit
emor deg e size x y = do
  r <- Reader.ask
  let
    y' = toNumber $ r.canvasSize.height - y
  localDraw r.ctx \c -> do
    setFont c (sizeToFont size')
    translate c { translateX: x' + half, translateY: y' - half }
    rotate c (-rad)
    fillText c (show e) (-half) half
  where
  size' = toNumber size

  half = size' / 2.0

  x' = toNumber x

  rad = 2.0 * pi * toNumber deg / 360.0

-- | The mirror version of `emor`.
emor' :: forall dt. Angle -> Emoji -> Size -> X -> Y -> Draw' dt Unit
emor' deg e size x y = do
  r <- Reader.ask
  let
    y' = toNumber $ r.canvasSize.height - y
  localDraw r.ctx \c -> do
    setFont c (sizeToFont size')
    translate c { translateX: x' + half, translateY: y' - half }
    rotate c (-rad)
    scale c { scaleX: -1.0, scaleY: 1.0 }
    fillText c (show e) (-half) half
  where
  size' = toNumber size

  half = size' / 2.0

  x' = toNumber x

  rad = 2.0 * pi * toNumber deg / 360.0

-- | Draw the emoji map with the specified accessor, size, x and y.
-- |
-- | The size is one of the emojis'.
emap ::
  forall dt dr.
  Newtype dt { | dr } =>
  ({ | dr } -> EmojiMap) -> Size -> X -> Y -> Draw' dt Unit
emap f size x y = do
  r <- Reader.ask
  let
    y' = toNumber $ r.canvasSize.height - y

    posY i = y' - toNumber i * size'

    ess = L.reverse <<< f <<< unwrap $ r.resource
  localDraw r.ctx \c -> do
    setFont c (sizeToFont size')
    traverseWithIndex_
      ( \row es ->
          traverseWithIndex_
            ( \col e ->
                when (e /= japaneseVacancyButton)
                  $ fillText c (show e) (posX col) (posY row)
            )
            es
      )
      ess
  where
  size' = toNumber size

  x' = toNumber x

  posX i = x' + toNumber i * size'

localDraw :: forall dt. Context2D -> (Context2D -> Effect Unit) -> Draw dt Unit
localDraw ctx op =
  liftEffect do
    save ctx
    setTextBaseline ctx BaselineIdeographic
    op ctx
    restore ctx

sizeToFont :: Number -> String
sizeToFont px = joinWith " " [ fontSize, fontFamily ]
  where
  fontSize = show px <> "px"

fontFamily :: String
fontFamily = "sans-serif"
