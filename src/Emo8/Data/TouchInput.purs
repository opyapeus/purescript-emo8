module Emo8.Data.TouchInput
  ( TouchInput(..)
  ) where
  
import Prelude

import Data.Array (elem)
import Data.Maybe (fromMaybe)
import Emo8.Class.Input (class Input, poll)
import Emo8.Data.TouchData (TouchData(..))
import Emo8.Data.TouchDirection (TouchDirection(..), diffVector, vectorToDirection)
import Emo8.Data.TouchState (TouchState(..))

newtype TouchInput = TouchInput
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

instance inputTouchInput :: Input TouchInput where
  poll = do
    touchDataSig <- poll
    touchStateSig <- poll
    pure $ mkTouchInput <$> touchDataSig <*> touchStateSig

mkTouchInput :: TouchData -> TouchState -> TouchInput
mkTouchInput (TouchData td) (TouchState ts) =
  -- TODO: use pattern match for performance?
  TouchInput
    { isLeft: elem rightDir [ Northwest, West, Southwest ]
    , isRight: elem rightDir [ Southeast, East, Northeast ]
    , isUp: elem rightDir [ Northwest, North, Northeast ]
    , isDown: elem rightDir [ Southwest, South, Southeast ]
    , isW: elem leftDir [ Northwest, North, Northeast ]
    , isA: elem leftDir [ Northwest, West, Southwest ]
    , isS: elem leftDir [ Southwest, South, Southeast ]
    , isD: elem leftDir [ Southeast, East, Northeast ]
    }
  where
    leftDir = fromMaybe NoDirection <<< map vectorToDirection $ mLeftVec
    rightDir = fromMaybe NoDirection <<< map vectorToDirection $ mRightVec
    mLeftVec = diffVector <$> td.leftPos <*> ts.leftBasePos
    mRightVec = diffVector <$> td.rightPos <*> ts.rightBasePos
