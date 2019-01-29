module Data.Enemy where

import Prelude

import Class.Object (class ObjectDraw, class Object, position, size)
import Constants (emoSize)
import Data.EnemyBullet (EnemyBullet(..))
import Data.Player (Player(..))
import Nemo.Data.Emoji as E
import Nemo.Draw.Action (emo)
import Nemo.Utils (defaultMonitorSize)
import Types (Pos)


data Enemy
    = Invader { pos :: Pos }
    | Bee { pos :: Pos }
    | Rex { pos :: Pos, cnt :: Int }
    | Moi { pos :: Pos, cnt :: Int }
    | Oct { pos :: Pos }

instance objectEnemy :: Object Enemy where
    size _ = emoSize

    position (Invader s) = s.pos
    position (Moi s) = s.pos
    position (Bee s) = s.pos
    position (Rex s) = s.pos
    position (Oct s) = s.pos

instance objectDrawEnemy :: ObjectDraw Enemy where
    draw o@(Invader _) = emo E.alienMonster (size o) (position o).x (position o).y
    draw o@(Moi _) = emo E.moai (size o) (position o).x (position o).y
    draw o@(Bee _) = emo E.honeybee (size o) (position o).x (position o).y
    draw o@(Rex _) = emo E.tRex (size o) (position o).x (position o).y
    draw o@(Oct _) = emo E.octopus (size o) (position o).x (position o).y

updateEnemy :: Player -> Enemy -> Enemy
updateEnemy p@(Player _) e@(Invader s) = Invader $ s { pos { x = s.pos.x - 5, y = s.pos.y + dy } }
    where
        v = diffVec e p
        dy
            | v.y > 0 = -2
            | v.y < 0 = 2
            | otherwise = 0
updateEnemy _ (Moi s) = Moi $ if mod s.cnt 32 < 16
        then s { pos { x = s.pos.x - 4, y = s.pos.y - 4 }, cnt = s.cnt + 1 } 
        else s { pos { x = s.pos.x - 8, y = s.pos.y + 4 } , cnt = s.cnt + 1 }
updateEnemy _ (Bee s) = Bee $ s { pos { x = s.pos.x - 15 } }
updateEnemy (Player p) (Rex s) = Rex $ if mod s.cnt 32 < 16
        then s { pos { x = s.pos.x - 4, y = s.pos.y + 4 }, cnt = s.cnt + 1 } 
        else s { pos { x = s.pos.x - 4, y = s.pos.y - 4 } , cnt = s.cnt + 1 }
updateEnemy _ (Oct s) = Oct $ s { pos { x = s.pos.x + dx } }
    where
        dx = if s.pos.x > defaultMonitorSize.width / 2 then -2 else 0

addEnemyBullet :: Player -> Enemy -> Array EnemyBullet
addEnemyBullet _ (Moi s) = if mod s.cnt 16 == 0 then [ NormalBull { pos: s.pos } ] else []
addEnemyBullet p e@(Rex s) = if mod s.cnt 32 == 16 then [ ParseBull { pos: s.pos, vec: v', t: 0 } ] else []
    where
        v = diffVec p e
        v' = { x: v.x / 128, y: v.y / 128 } 
addEnemyBullet _ _ = []

diffVec :: forall a b. Object a => Object b => a -> b -> Pos
diffVec a b = { x: (position a).x - (position b).x, y: (position a).y - (position b).y }

emergeTable :: Int -> Array Enemy
emergeTable = case _ of
    400 -> [ Invader { pos: { x: defaultMonitorSize.width, y: 500 } } ]
    500 ->
        [ Invader { pos: { x: defaultMonitorSize.width, y: 800 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 300 } }
        ]
    1400 -> [ Invader { pos: { x: defaultMonitorSize.width, y: 500 } } ]
    1500 ->
        [ Invader { pos: { x: defaultMonitorSize.width, y: 800 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 300 } }
        ]
    2500 ->
        [ Invader { pos: { x: defaultMonitorSize.width, y: 500 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 700 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 900 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 300 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 100 } }
        ]
    -- second: 4096
    4000 -> [ Bee { pos: { x: defaultMonitorSize.width, y: 800 } } ]
    4500 -> [ Bee { pos: { x: defaultMonitorSize.width, y: 500 } } ]
    5000 -> [ Bee { pos: { x: defaultMonitorSize.width, y: 200 } } ]
    6000 ->
        [ Bee { pos: { x: defaultMonitorSize.width, y: 800 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 500 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 200 } }
        ]
    6500 ->
        [ Bee { pos: { x: defaultMonitorSize.width, y: 900 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 600 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 300 } }
        ]
    -- third: 8192
    8000 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    8500 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    10000 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    10500 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    -- forth: 12288
    12000 -> [ Moi { pos: { x: defaultMonitorSize.width, y: 500 }, cnt: 0 } ]
    12500 -> [ Moi { pos: { x: defaultMonitorSize.width, y: 800 }, cnt: 0 } ]
    13000 -> [ Moi { pos: { x: defaultMonitorSize.width, y: 200 }, cnt: 0 } ]
    14000 ->
        [ Moi { pos: { x: defaultMonitorSize.width, y: 500 }, cnt: 0 }
        , Moi { pos: { x: defaultMonitorSize.width, y: 800 }, cnt: 0 }
        , Moi { pos: { x: defaultMonitorSize.width, y: 200 }, cnt: 0 }
        ]
    -- fifth: 16384
    16000 -> [ Oct { pos: { x: defaultMonitorSize.width, y: 500 } } ]
    _ -> []