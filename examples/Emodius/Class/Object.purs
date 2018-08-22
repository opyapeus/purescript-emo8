module Class.Object where
  
import Nemo.Types (RenderOp)
import Types (Pos)
  
class Object s where
    size :: s -> Int
    position :: s -> Pos

class Object s <= ObjectDraw s where
    draw :: s -> RenderOp
