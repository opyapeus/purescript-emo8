module Nemo.Debug where

import Prelude

import Data.Tuple (Tuple(..))
import Effect (Effect)
import Nemo.Class.Game (class Game, update)
import Nemo.Data.Input (Input)
import Nemo.Data.SpecialInput (SpecialInput)
import Nemo.KeyPress (PressState(..), updatePressState)
import Nemo.Types (Asset)


type DebugInput =
  { input :: Input
  , specialInput :: SpecialInput
  }

type DebugState s =
  { state :: s
  , savedState :: s
  , loopState :: LoopState
  , saveAction :: PressState
  , loadAction :: PressState
  , forwardAction :: PressState
  }

data LoopState = Resume | Suspend

updateD :: forall s. Game s => DebugInput -> DebugState s -> (Asset -> DebugState s)
updateD i s ass = nnns
  where
    updatedState = update i.input s.state ass
    updatedSaveAction = updatePressState i.specialInput.isSave s.saveAction
    updatedLoadAction = updatePressState i.specialInput.isLoad s.loadAction
    updatedForwardAction = updatePressState i.specialInput.isForward s.forwardAction
    ns = case Tuple s.loopState i.specialInput of
      Tuple Suspend { isSuspend: false, isResume: true } -> s { state = updatedState, loopState = Resume }
      Tuple Suspend _ -> s
      Tuple Resume { isSuspend: true, isResume: false } -> s { loopState = Suspend }
      Tuple Resume _ -> s { state = updatedState }
    nns = case { sa: updatedSaveAction, la: updatedLoadAction, fa: updatedForwardAction } of
      { sa: Catched, la: Catched, fa: _ } -> ns
      { sa: Catched, la: _, fa: Catched } -> ns
      { sa: _, la: Catched, fa: Catched } -> ns
      { sa: Catched, la: _, fa: _ } -> ns { savedState = s.state }
      { sa: _, la: Catched, fa: _ } -> ns { state = s.savedState }
      { sa: _, la: _, fa: Catched } -> ns { state = updatedState }
      _ -> ns
    nnns = nns
      { saveAction = updatedSaveAction
      , loadAction = updatedLoadAction
      , forwardAction = updatedForwardAction
      }

withDebugInput :: Input -> SpecialInput -> DebugInput
withDebugInput i si = { input: i, specialInput: si }

initialDebugState :: forall s. Game s => s -> DebugState s
initialDebugState s =
  { state: s
  , savedState : s
  , loopState: Resume
  , saveAction: Unpressed
  , loadAction: Unpressed
  , forwardAction: Unpressed
  }

providedSave :: forall s. Game s => DebugState s -> Effect Unit -> Effect Unit
providedSave { saveAction: Catched } op = op
providedSave _ op = pure unit

providedUpdate :: forall s. Game s => DebugState s -> Effect Unit -> Effect Unit
providedUpdate { loopState: Resume } op = op
providedUpdate { loopState: Suspend, loadAction: Catched, forwardAction: Catched } op = pure unit
providedUpdate { loopState: Suspend, loadAction: Catched } op = op
providedUpdate { loopState: Suspend, forwardAction: Catched } op = op
providedUpdate _ op = pure unit
