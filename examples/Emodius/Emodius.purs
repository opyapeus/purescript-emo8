module Emodius where

import Prelude

import Asset (map0, map1, map2, map3)
import Class.Object (draw, position)
import Collision (isCollideObjects, isOutOfWorld)
import Constants (speed)
import Data.Array (any, filter)
import Data.Bullet (Bullet, updateBullet)
import Data.Enemy (Enemy(..), addEnemyBullet, emergeTable, updateEnemy)
import Data.EnemyBullet (EnemyBullet, updateEnemyBullet)
import Data.Particle (Particle, initParticle, updateParticle)
import Data.Player (Player, addBullet, initialPlayer, updatePlayer)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Helper (beInMonitor, divideArray, drawScrollMap, isCollideScrollMap, isInputAny)
import Nemo (nemo)
import Nemo.Class.Game (class Game)
import Nemo.Data.Color (Color(..))
import Nemo.Data.Emoji (Emoji(..))
import Nemo.Draw (cls, emo, emor, emor')
import Nemo.Utils (mkAsset)


data View = Title | Play | Over | Clear

data State = State
    { view :: View
    , isButtonPressed :: Boolean
    , distance :: Int
    , player :: Player
    , bullets :: Array Bullet
    , enemies :: Array Enemy
    , particles :: Array Particle
    , enemyBullets :: Array EnemyBullet
    -- , debug :: String
    }

instance gameState :: Game State where
    update input stt@(State s) asset = case s.view of
        Over -> if isFirstPressed then initialState else State $ s { isButtonPressed = isPressed }
        Clear -> if isFirstPressed then initialState else State $ s { isButtonPressed = isPressed }
        Title -> if isFirstPressed then State $ s { view = Play } else State $ s { isButtonPressed = isPressed }
        Play -> case Tuple isGameClear isGameOver of
            Tuple true _ -> State $ s { view = Clear }
            Tuple false true -> State $ s { view = Over }
            Tuple false false -> State $ s 
                { isButtonPressed = isPressed
                , distance = s.distance + speed
                , player = nnp
                , bullets = nnbullets <> newBullets
                , enemies = nnenemies <> newEnemies
                , particles = nnparticles <> newParticles
                , enemyBullets = nnenemyBullets <> newEnemyBullets
                -- , debug = show s.distance
                }
            where
                -- util
                isPressed = isInputAny input
                isFirstPressed = isPressed && not s.isButtonPressed

                -- update pos
                np = updatePlayer input s.player
                nbullets = map updateBullet s.bullets
                nenemies = map (updateEnemy s.player) s.enemies
                nparticles = map updateParticle s.particles
                nenemyBullets = map updateEnemyBullet s.enemyBullets

                -- player collision
                isMapColl = isCollideScrollMap asset s.distance np
                isEnemyColl = any (isCollideObjects np) nenemies
                isEnemyBulletColl = any (isCollideObjects np) nenemyBullets

                -- separate objects
                Tuple collidedEnemies notCollidedEnemies = divideArray (\e -> any (isCollideObjects e) nbullets) nenemies
                Tuple collidedBullets notCollidedBullets = divideArray (\b -> any (isCollideObjects b) nenemies) nbullets

                -- add new objects
                newBullets = addBullet input s.player
                newParticles = map (\e -> initParticle (position e)) collidedEnemies
                newEnemies = emergeTable s.distance
                newEnemyBullets = notCollidedEnemies >>= addEnemyBullet s.player

                -- fix player position
                nnp = beInMonitor s.player np

                -- delete objects (out of monitor)
                nnbullets = filter (not <<< isOutOfWorld) notCollidedBullets
                nnenemies = filter (not <<< isOutOfWorld) notCollidedEnemies
                nnparticles = filter (not <<< isOutOfWorld) nparticles
                nnenemyBullets = filter (not <<< isOutOfWorld) nenemyBullets

                -- game condition
                isGameOver = isMapColl || isEnemyColl || isEnemyBulletColl
                isCatchOct (Oct _) = true
                isCatchOct _ = false  
                isGameClear = any isCatchOct collidedEnemies

    draw (State s) = case s.view of
        Over ->
            [ cls Maroon
            , emo Hole 512 250 300
            , emor 160 Helicopter 256 350 400
            , emo RecyclingSymbol 256 375 700
            ]
        Clear ->
            [ cls Lime
            , emor 15 Helicopter 128 700 800
            , emor (-15) Octopus 256 350 350
            , emo GlobeWithMeridians 512 150 150
            , emo ThumbsUp 128 200 800
            ]
        Title ->
            [ cls Aqua
            , emor' 30 Helicopter 384 100 100
            , emo SpiderWeb 512 400 400
            , emor (-15) Octopus 256 600 600
            , emo Pill 128 250 800
            , emor 75 Pill 128 200 600
            , emo FastForwardButton 128 700 200
            ]
        Play ->
            [ cls Aqua
            , drawScrollMap s.distance
            , draw s.player
            -- , const $ log (show s.debug)
            ] <> map draw s.bullets
            <> map draw s.enemies
            <> map draw s.particles
            <> map draw s.enemyBullets

    sound _ = []

initialState :: State
initialState = State
    { view: Title
    , isButtonPressed: true
    , distance: 0
    , player: initialPlayer
    , bullets: []
    , enemies: []
    , particles: []
    , enemyBullets : []
    -- , debug: ""
    }

main :: Effect Unit
main = do
    asset <- mkAsset
        [map0, map1, map2, map3]
        []
    nemo initialState asset
