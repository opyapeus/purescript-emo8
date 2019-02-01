module Data.Enemy where

import Prelude

import Class.Object (class ObjectDraw, class Object, position, size)
import Constants (emoSize, speed)
import Data.EnemyBullet (EnemyBullet(..))
import Data.Player (Player(..))
import Emo8.Data.Emoji as E
import Emo8.Draw.Action (emo)
import Emo8.Utils (defaultMonitorSize)
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
updateEnemy p@(Player _) e@(Invader s) = Invader $ s { pos { x = s.pos.x - 3, y = s.pos.y + dy } }
    where
        v = diffVec e p
        dy
            | v.y > 0 = -1
            | v.y < 0 = 1
            | otherwise = 0
updateEnemy _ (Moi s) = Moi $ if mod s.cnt 32 < 16
        then s { pos { x = s.pos.x - 2, y = s.pos.y - 2 }, cnt = s.cnt + 1 } 
        else s { pos { x = s.pos.x - 4, y = s.pos.y + 2 } , cnt = s.cnt + 1 }
updateEnemy _ (Bee s) = Bee $ s { pos { x = s.pos.x - 6 } }
updateEnemy (Player p) (Rex s) = Rex $ if mod s.cnt 32 < 16
        then s { pos { x = s.pos.x - speed, y = s.pos.y + 4 }, cnt = s.cnt + 1 } 
        else s { pos { x = s.pos.x - speed, y = s.pos.y - 4 } , cnt = s.cnt + 1 }
updateEnemy _ (Oct s) = Oct $ s { pos { x = s.pos.x + dx } }
    where
        dx = if s.pos.x > defaultMonitorSize.width / 2 then -speed else 0

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
    200 -> [ Invader { pos: { x: defaultMonitorSize.width, y: 250 } } ]
    250 ->
        [ Invader { pos: { x: defaultMonitorSize.width, y: 400 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 150 } }
        ]
    700 -> [ Invader { pos: { x: defaultMonitorSize.width, y: 250 } } ]
    750 ->
        [ Invader { pos: { x: defaultMonitorSize.width, y: 400 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 150 } }
        ]
    1250 ->
        [ Invader { pos: { x: defaultMonitorSize.width, y: 250 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 350 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 450 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 150 } }
        , Invader { pos: { x: defaultMonitorSize.width, y: 50 } }
        ]
    -- second: 4096
    2000 -> [ Bee { pos: { x: defaultMonitorSize.width, y: 400 } } ]
    2250 -> [ Bee { pos: { x: defaultMonitorSize.width, y: 250 } } ]
    2500 -> [ Bee { pos: { x: defaultMonitorSize.width, y: 100 } } ]
    3000 ->
        [ Bee { pos: { x: defaultMonitorSize.width, y: 400 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 250 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 100 } }
        ]
    3250 ->
        [ Bee { pos: { x: defaultMonitorSize.width, y: 450 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 300 } }
        , Bee { pos: { x: defaultMonitorSize.width, y: 150 } }
        ]
    -- third: 8192
    4000 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    4250 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    5000 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    5250 -> [ Rex { pos: { x: defaultMonitorSize.width, y: emoSize }, cnt: 0 } ]
    -- forth: 12288
    6000 -> [ Moi { pos: { x: defaultMonitorSize.width, y: 250 }, cnt: 0 } ]
    6250 -> [ Moi { pos: { x: defaultMonitorSize.width, y: 400 }, cnt: 0 } ]
    6500 -> [ Moi { pos: { x: defaultMonitorSize.width, y: 100 }, cnt: 0 } ]
    7000 ->
        [ Moi { pos: { x: defaultMonitorSize.width, y: 250 }, cnt: 0 }
        , Moi { pos: { x: defaultMonitorSize.width, y: 400 }, cnt: 0 }
        , Moi { pos: { x: defaultMonitorSize.width, y: 100 }, cnt: 0 }
        ]
    -- fifth: 16384
    8000 -> [ Oct { pos: { x: defaultMonitorSize.width, y: 250 } } ]
    _ -> []