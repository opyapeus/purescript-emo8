module Main where

import Prelude
import Class.Object (class Object, draw, position)
import Collision (isCollideObjects, isOutOfWorld)
import Constants (canvasSize, speed)
import Data.Array (any, filter, filterA, partition)
import Data.Bullet (Bullet, updateBullet)
import Data.Enemy (Enemy(..), addEnemyBullet, emergeTable, updateEnemy)
import Data.EnemyBullet (EnemyBullet, updateEnemyBullet)
import Data.Foldable (traverse_)
import Data.Particle (Particle, initParticle, updateParticle)
import Data.Player (Player, addBullet, initialPlayer, updatePlayer)
import Effect (Effect)
import Emo8 (emo8)
import Emo8.Data.Color as C
import Emo8.Data.Emoji as E
import Emo8.Data.Input (Input)
import Emo8.Game (class Game)
import Emo8.Game.Draw (cls, emo, emor, emor')
import Emo8.Game.Update (Update)
import Emo8.Util.Input (anyInput, catchInput, everyInput)
import Helper (beInMonitor, drawScrollMap, isCollideScrollMap)

data State
  = TitleState
    { prevInput :: Input }
  | OverState
    { prevInput :: Input }
  | ClearState
    { prevInput :: Input }
  | PlayState
    { distance :: Int
    , player :: Player
    , bullets :: Array Bullet
    , enemies :: Array Enemy
    , particles :: Array Particle
    , enemyBullets :: Array EnemyBullet
    , trans :: Trans
    }

data Trans
  = Continue
  | GameClear
  | GameOver

instance gameState :: Game State where
  update input = case _ of
    TitleState s
      | catchAny s -> pure initialPlayState
      | otherwise -> pure $ TitleState { prevInput: input }
    OverState s
      | catchAny s -> pure initialState
      | otherwise -> pure $ OverState { prevInput: input }
    ClearState s
      | catchAny s -> pure initialState
      | otherwise -> pure $ ClearState { prevInput: input }
    PlayState s -> do
      ns <- system s
      pure case ns.trans of
        GameClear -> ClearState { prevInput: input }
        GameOver -> OverState { prevInput: input }
        Continue -> PlayState ns
      where
      system =
        deleteOutObjects
          <=< playerInCanvas
          <<< addDistance
          <<< shootEnemy
          <<< gameClear
          <<< gameOver
          <<< movement
          <<< newPlayerBullet
          <<< newEnemyBullet
          <<< newEnemies

      newEnemies d = d { enemies = d.enemies <> emergeTable d.distance }

      newEnemyBullet d = d { enemyBullets = d.enemyBullets <> (addEnemyBullet s.player =<< d.enemies) }

      newPlayerBullet d = d { bullets = d.bullets <> addBullet input s.player }

      movement d =
        d
          { player = updatePlayer input d.player
          , bullets = updateBullet <$> d.bullets
          , enemies = updateEnemy s.player <$> d.enemies
          , particles = updateParticle <$> d.particles
          , enemyBullets = updateEnemyBullet <$> d.enemyBullets
          }

      gameOver d = check
        where
        check
          | isMapColl || isEnemyColl || isEnemyBulletColl = d { trans = GameOver }
          | otherwise = d

        isMapColl = isCollideScrollMap s.distance d.player

        isEnemyColl = anyColl d.player d.enemies

        isEnemyBulletColl = anyColl d.player d.enemyBullets

      gameClear d = check
        where
        check
          | any isCatchBoss collidedEnemies = d { trans = GameClear }
          | otherwise = d

        collidedEnemies = filter (anyCollFlip d.bullets) d.enemies

        isCatchBoss (Oct _) = true

        isCatchBoss _ = false

      shootEnemy d =
        d
          { enemies = notCollidedEnemies
          , particles = d.particles <> map (initParticle <<< position) collidedEnemies
          , bullets = notCollidedBullets
          }
        where
        { yes: collidedEnemies, no: notCollidedEnemies } = partition (anyCollFlip d.bullets) d.enemies

        { yes: _, no: notCollidedBullets } = partition (anyCollFlip d.enemies) d.bullets

      addDistance d = d { distance = d.distance + speed }

      playerInCanvas d = do
        player' <- beInMonitor d.player
        pure d { player = player' }

      deleteOutObjects d = do
        enemies' <- f d.enemies
        particles' <- f d.particles
        bullets' <- f d.bullets
        enemyBullets' <- f d.enemyBullets
        pure
          d
            { enemies = enemies'
            , particles = particles'
            , bullets = bullets'
            , enemyBullets = enemyBullets'
            }
        where
        f :: forall a. Object a => Array a -> Update (Array a)
        f = filterA (pure <<< not <=< isOutOfWorld)

      anyColl :: forall a b. Object a => Object b => a -> Array b -> Boolean
      anyColl = any <<< isCollideObjects

      anyCollFlip :: forall a b. Object a => Object b => Array b -> a -> Boolean
      anyCollFlip = flip anyColl
    where
    catchAny s = anyInput $ catchInput s.prevInput input
  draw (TitleState _) = do
    cls C.aqua
    emor' 30 E.helicopter 192 50 50
    emo E.spiderWeb 256 200 200
    emor (-15) E.octopus 128 300 300
    emo E.pill 64 150 400
    emor 75 E.pill 64 100 300
    emo E.fastForwardButton 64 350 100
  draw (OverState _) = do
    cls C.maroon
    emo E.hole 256 125 150
    emor 160 E.helicopter 128 175 200
    emo E.recyclingSymbol 128 185 350
  draw (ClearState _) = do
    cls C.lime
    emor 15 E.helicopter 64 350 400
    emor (-15) E.octopus 128 175 175
    emo E.globeWithMeridians 256 75 75
    emo E.thumbsUp 64 100 400
  draw (PlayState s) = do
    cls C.aqua
    drawScrollMap s.distance
    draw s.player
    traverse_ draw s.bullets
    traverse_ draw s.enemies
    traverse_ draw s.particles
    traverse_ draw s.enemyBullets
  sound _ = pure unit

initialPlayState :: State
initialPlayState =
  PlayState
    { distance: 0
    , player: initialPlayer
    , bullets: []
    , enemies: []
    , particles: []
    , enemyBullets: []
    , trans: Continue
    }

initialState :: State
initialState = TitleState { prevInput: everyInput }

main :: Effect Unit
main = do
  emo8 initialState conf
  where
  conf =
    { canvasSize: canvasSize
    , retina: true
    }
