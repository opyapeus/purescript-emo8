module Nemo.Draw
    ( cls
    , emo
    , emo'
    , emor
    , emor'
    , emap
    , emap'
    ) where

import Prelude

import Data.Array (length, zip, (!!), (..))
import Data.Int (toNumber)
import Data.Maybe (Maybe(..))
import Data.String (joinWith)
import Data.Traversable (for_)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Graphics.Canvas (Context2D, fillRect, fillText, restore, rotate, save, scale, setFillStyle, setFont, translate)
import Math (pi)
import Nemo.Constants (fontFamily, scene)
import Nemo.Data.Color (Color(..), colorToCode)
import Nemo.Data.Emoji (Emoji(..))
import Nemo.Patch.TextBaseline (TextBaseline(..), setTextBaseline)
import Nemo.Types (Deg, DrawContext(..), RenderOp, Size, X, Y, MapId)


-- | Clear screen with given color.
cls :: Color -> RenderOp
cls c (DrawContext dctx) = do
    setFillStyle dctx.ctx (colorToCode c)
    fillRect dctx.ctx { x: 0.0, y: 0.0, width: toNumber $ scene.width, height: toNumber $ scene.height }

withLocalDraw :: RenderOp -> RenderOp
withLocalDraw op ctx@(DrawContext dctx) = do
    save dctx.ctx
    op ctx
    restore dctx.ctx

fillTextWithT :: Emoji -> Size -> X -> Y -> (Context2D -> Effect Unit) -> RenderOp
fillTextWithT e size x y' op (DrawContext dctx) = do
    translate dctx.ctx { translateX: toNumber x + halfSize, translateY: toNumber y' - halfSize }
    op dctx.ctx
    fillTextConsVoid e size (- halfSize) halfSize dctx.ctx
    where
        halfSize = toNumber size / 2.0

fillTextConsVoid :: Emoji -> Size -> Number -> Number -> Context2D -> Effect Unit
fillTextConsVoid JapaneseVacancyButton size x y ctx = pure unit
fillTextConsVoid e size x y ctx = do
    setFont ctx font
    setTextBaseline ctx BaselineIdeographic
    setFillStyle ctx (colorToCode Black) -- NOTE: for text emoji
    fillText ctx (show e) x y
    where
        font = sizeToFont size

-- | Draw emoji.
emo :: Emoji -> Size -> X -> Y -> RenderOp
emo e size x y =
    withLocalDraw $ \(DrawContext dctx) -> do
        fillTextConsVoid e size (toNumber x) (toNumber y') dctx.ctx
    where
        y' = toBaseY y

-- | Draw rotated emoji.
-- | CAUTION: It does not display correctly (Deg = 45, 135, 225, 315).
emor :: Deg -> Emoji -> Size -> X -> Y -> RenderOp
emor rot e size x y =
    withLocalDraw $ \ctx@(DrawContext dctx) -> do
        flip (fillTextWithT e size x y') ctx $ \ctx2d -> do
            rotate ctx2d (- degToRad rot)
    where
        y' = toBaseY y

-- | Draw mirrored emoji.
emo' :: Emoji -> Size -> X -> Y -> RenderOp
emo' e size x y =
    withLocalDraw $ \ctx@(DrawContext dctx) -> do
        flip (fillTextWithT e size x y') ctx $ \ctx2d -> do
            scale ctx2d { scaleX: -1.0, scaleY: 1.0 }
    where
        y' = toBaseY y
  
-- | Draw mirrored rotated emoji.
-- | CAUTION: It does not display correctly (Deg = 45, 135, 225, 315).
emor' :: Deg -> Emoji -> Size -> X -> Y -> RenderOp
emor' rot e size x y =
    withLocalDraw $ \ctx@(DrawContext dctx) -> do
        flip (fillTextWithT e size x y') ctx $ \ctx2d -> do
            rotate ctx2d (- degToRad rot)
            scale ctx2d { scaleX: -1.0, scaleY: 1.0 }
    where
        y' = toBaseY y

-- | Draw emoji map.
emap :: MapId -> Size -> X -> Y -> RenderOp
emap = emapF emo

-- | Draw mirrored emoji map.
emap' :: MapId -> Size -> X -> Y -> RenderOp
emap' = emapF emo'

emapF :: (Emoji -> Size -> X -> Y -> RenderOp) -> MapId -> Size -> X -> Y -> RenderOp
emapF f mId size x y =
    withLocalDraw $ \ctx@(DrawContext dctx) ->
        case dctx.mapData !! mId of
            Nothing -> pure unit -- NOTE: Prioritize simplicity
            Just em ->
                for_ (emapWithIndex em) $
                    \(Tuple vrId iarr) -> for_ iarr $
                        \(Tuple hrId e) ->
                            let xx = x + size * hrId
                                yy = y + size * vrId 
                            in f e size xx yy ctx
                where
                    withIndex arr = zip (0..((length arr) - 1)) arr
                    withIndexRev arr = zip (((length arr) - 1)..0) arr
                    emapWithIndex = withIndexRev <<< (map withIndex)

toBaseY :: Y -> Y
toBaseY y = scene.height - y

degToRad :: Deg -> Number
degToRad d = 2.0 * pi * toNumber d / 360.0

sizeToFont :: Size -> String
sizeToFont px = joinWith " " [fontSize, fontFamily]
    where fontSize = show px <> "px"

