module Emo8.Draw.Interpreter where

import Prelude

import Control.Monad.Free (foldFree)
import Data.Array (length, zip, (..))
import Data.Int (toNumber)
import Data.String (joinWith)
import Data.Traversable (for_)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Graphics.Canvas (Context2D, fillRect, fillText, restore, rotate, save, scale, setFillStyle, setFont, translate)
import Math (pi)
import Emo8.Draw.Action (Appearance(..), Draw, DrawF(..))
import Emo8.Constants (fontFamily)
import Emo8.Data.Color (Color(..), colorToCode)
import Emo8.Data.Emoji (Emoji, japaneseVacancyButton)
import Emo8.Patch.TextBaseline (TextBaseline(..), setTextBaseline)
import Emo8.Types (Deg, IdX, IdY, MapId, MonitorSize, Size, X, Y, DrawContext)
import Emo8.Excepiton (providedMap)

type RenderOp = DrawContext -> Effect Unit

runDraw :: forall a. DrawContext -> Draw a -> Effect a
runDraw dctx = foldFree interpret
  where
    interpret :: DrawF ~> Effect
    interpret (ClearScreen c n) = const n <$> cls c dctx
    interpret (Emo Normal e size x y n) = const n <$> emo e size x y dctx
    interpret (Emo Mirrored e size x y n) = const n <$> emo' e size x y dctx
    interpret (Emor Normal deg e size x y n) = const n <$> emor deg e size x y dctx
    interpret (Emor Mirrored deg e size x y n) = const n <$> emor' deg e size x y dctx
    interpret (Emap Normal mId size x y n) = const n <$> emap mId size x y dctx
    interpret (Emap Mirrored mId size x y n) = const n <$> emap' mId size x y dctx

cls :: Color -> RenderOp
cls c dctx = do
    setFillStyle dctx.ctx (colorToCode c)
    fillRect dctx.ctx { x: 0.0, y: 0.0, width: toNumber dctx.monitorSize.width, height: toNumber dctx.monitorSize.height }

withLocalDraw :: RenderOp -> RenderOp
withLocalDraw op dctx = do
    save dctx.ctx
    op dctx
    restore dctx.ctx

drawEmojiWithTrans :: Emoji -> Size -> X -> Y -> (Context2D -> Effect Unit) -> RenderOp
drawEmojiWithTrans e size x y op dctx = do
    translate dctx.ctx { translateX: toNumber x + halfSize, translateY: toNumber y' - halfSize }
    op dctx.ctx
    drawEmoji e size (-halfSize) halfSize dctx.ctx
    where
        y' = toBaseY dctx.monitorSize y
        halfSize = toNumber size / 2.0

drawEmoji :: Emoji -> Size -> Number -> Number -> Context2D -> Effect Unit
drawEmoji e size x y ctx
    | e == japaneseVacancyButton = pure unit
    | otherwise = do
        setFont ctx font
        setTextBaseline ctx BaselineIdeographic
        setFillStyle ctx (colorToCode Black) -- NOTE: for text emoji
        fillText ctx (show e) x y
        where
            font = sizeToFont size

emo :: Emoji -> Size -> X -> Y -> RenderOp
emo e size x y =
    withLocalDraw \dctx ->
        let y' = toBaseY dctx.monitorSize y
        in drawEmoji e size (toNumber x) (toNumber y') dctx.ctx

-- | NOTE: It does not display correctly (Deg = 45, 135, 225, 315).
emor :: Deg -> Emoji -> Size -> X -> Y -> RenderOp
emor rot e size x y =
    withLocalDraw \dctx ->
        flip (drawEmojiWithTrans e size x y) dctx \ctx2d ->
            rotate ctx2d (-degToRad rot)

emo' :: Emoji -> Size -> X -> Y -> RenderOp
emo' e size x y =
    withLocalDraw \dctx ->
        flip (drawEmojiWithTrans e size x y) dctx \ctx2d ->
            scale ctx2d { scaleX: -1.0, scaleY: 1.0 }
  
-- | NOTE: It does not display correctly (Deg = 45, 135, 225, 315).
emor' :: Deg -> Emoji -> Size -> X -> Y -> RenderOp
emor' rot e size x y =
    withLocalDraw \dctx ->
        flip (drawEmojiWithTrans e size x y) dctx \ctx2d -> do
            rotate ctx2d (-degToRad rot)
            scale ctx2d { scaleX: -1.0, scaleY: 1.0 }

emap :: MapId -> Size -> X -> Y -> RenderOp
emap = emapF emo

emap' :: MapId -> Size -> X -> Y -> RenderOp
emap' = emapF emo'

-- REVIEW: refactor
emapF :: (Emoji -> Size -> X -> Y -> RenderOp) -> MapId -> Size -> X -> Y -> RenderOp
emapF f mId size x y =
    withLocalDraw \dctx ->
        providedMap dctx.mapData mId \em -> 
            for_ (emapWithIndex em) \(Tuple vertId withIdRow) ->
                for_ withIdRow \(Tuple horiId e) ->
                    when (isVisible dctx.monitorSize horiId vertId)
                        let xx = x + size * horiId
                            yy = y + size * vertId 
                        in f e size xx yy dctx
    where
        withIndex :: forall a. Array a -> Array (Tuple Int a)
        withIndex arr = zip (0..((length arr) - 1)) arr
        -- NOTE: reverse for y axis
        withIndexRev :: forall a. Array a -> Array (Tuple Int a)
        withIndexRev arr = zip (((length arr) - 1)..0) arr
        emapWithIndex = withIndexRev <<< (map withIndex)

        isVisible :: MonitorSize -> IdX -> IdY -> Boolean
        isVisible ms xId yId =
            ( xId >= xlBoundId
            && xId <= xrBoundId ms
            && yId >= ybBoundId
            && yId <= ytBoundId ms
            )
        maxMapElemX ms = ms.width / size
        maxMapElemY ms = ms.height / size
        xMapId = x / size
        yMapId = y / size
        xlBoundId = - (xMapId + 1)
        xrBoundId ms = xlBoundId + maxMapElemX ms
        ybBoundId = - (yMapId + 1)
        ytBoundId ms = ybBoundId + maxMapElemY ms


toBaseY :: MonitorSize -> Y -> Y
toBaseY ms y = ms.height - y

degToRad :: Deg -> Number
degToRad d = 2.0 * pi * toNumber d / 360.0

sizeToFont :: Size -> String
sizeToFont px = joinWith " " [fontSize, fontFamily]
    where fontSize = show px <> "px"
