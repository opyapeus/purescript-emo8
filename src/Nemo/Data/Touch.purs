-- | Experimental
module Nemo.Data.Touch
  ( TouchData
  , TouchState
  , pollTouches
  , initialTouchState
  , margeToInput
  , updateTouchState
  ) where
  
import Prelude

import Data.Array (filter, head)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Nemo.Constants (scene)
import Nemo.Data.Input (Input(..))
import Signal (Signal)
import Signal.DOM (Touch, DimensionPair, touch, windowDimensions)

type TouchData =
  { touches :: Array Touch
  , window :: DimensionPair    
  }

pollTouches :: Effect (Signal TouchData)
pollTouches = do
    t <- touch
    win <- windowDimensions
    -- TODO: refactor?
    pure $
      { touches: _
      , window: _
      }
      <$> t
      <*> win

type TouchState =
  { lx :: Int
  , ly :: Int
  , rx :: Int
  , ry :: Int
  , isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

lxDef :: Int
lxDef = scene.width / 4
rxDef :: Int
rxDef = 3 * scene.width / 4
yDef :: Int
yDef = scene.height / 2
btnDef :: Boolean
btnDef = false

initialTouchState :: TouchState
initialTouchState =
  { lx: lxDef
  , ly: yDef
  , rx: rxDef
  , ry: yDef
  , isLeft: btnDef
  , isRight: btnDef
  , isUp: btnDef
  , isDown: btnDef
  , isW: btnDef
  , isA: btnDef
  , isS: btnDef
  , isD: btnDef
  }

updateTouchState :: TouchData -> TouchState -> TouchState
updateTouchState d s =
    { lx: withDefault lxDef $ map _.screenX lt
    , ly: withDefault yDef $ map _.screenY lt
    , rx: withDefault rxDef $ map _.screenX rt
    , ry: withDefault yDef $ map _.screenY rt
    , isLeft: withDefault btnDef $ map (\t -> t.screenX < s.rx) rt
    , isRight: withDefault btnDef $ map (\t -> t.screenX > s.rx) rt
    , isUp: withDefault btnDef $ map (\t -> t.screenY < s.ry) rt
    , isDown: withDefault btnDef $ map (\t -> t.screenY > s.ry) rt
    , isW: withDefault btnDef $ map (\t -> t.screenY < s.ly) lt
    , isA: withDefault btnDef $ map (\t -> t.screenX < s.lx) lt
    , isS: withDefault btnDef $ map (\t -> t.screenY > s.ly) lt
    , isD: withDefault btnDef $ map (\t -> t.screenX > s.lx) lt
    }
  where
    ts = d.touches
    w = d.window.w
    lt = filter (\t -> t.screenX < w / 2) ts
    rt = filter (\t -> t.screenX > w / 2) ts
    withDefault :: forall a. a -> Array a -> a
    withDefault de xs = case head xs of
      Just x -> x
      Nothing -> de

margeToInput :: TouchState -> Input -> Input
margeToInput s (Input i) = Input
  { isLeft : i.isLeft || s.isLeft
  , isRight : i.isRight || s.isRight
  , isUp : i.isUp || s.isUp
  , isDown : i.isDown || s.isDown
  , isW : i.isW || s.isW
  , isA : i.isA || s.isA
  , isS : i.isS || s.isS
  , isD : i.isD || s.isD
  }