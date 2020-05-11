module Main where

import Prelude
import Asset (map0, map1, map2, map3, walls)
import Class.Object (class Object, draw, position, size)
import Collision (isCollideObjects, isOutOfWorld)
import Constants (mapSize, speed)
import Data.Array (any, filter, partition)
import Data.Bullet (Bullet, updateBullet)
import Data.Enemy (Enemy(..), addEnemyBullet, emergeTable, updateEnemy)
import Data.EnemyBullet (EnemyBullet, updateEnemyBullet)
import Data.Foldable (traverse_)
import Data.Newtype (class Newtype)
import Data.Particle (Particle, initParticle, updateParticle)
import Data.Player (Player, addBullet, initialPlayer, updatePlayer)
import Effect (Effect)
import Emo8 (emo8)
import Emo8.Data.Color as C
import Emo8.Data.Draw (Draw)
import Emo8.Data.Emoji as E
import Emo8.Data.Input (Input)
import Emo8.Data.Update (Update)
import Emo8.Game (class Game)
import Emo8.Game.Draw (DrawContext, cls, emap, emo, emor, emor')
import Emo8.Game.Update (isCollideMap)
import Emo8.Parser.Type (EmojiMap)
import Emo8.Type (X)
import Emo8.Util.Config (defaultConfig)
import Emo8.Util.Input (anyInput, catchInput, everyInput)
import Emo8.Util.Resource (EmptyScore, emptyScore)
import Helper (beInMonitor, mapTileInMonitor, mapWidth)

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
    }

newtype DR
  = DR { | DRRow }

type DRRow
  = ( stage1 :: EmojiMap
    , stage2 :: EmojiMap
    , stage3 :: EmojiMap
    , stage4 :: EmojiMap
    )

derive instance newtypeDR :: Newtype DR _

instance gameState :: Game State DR EmptyScore where
  update input (TitleState s) = pure $ if anyInput (catchInput s.prevInput input) then initialPlayState else TitleState { prevInput: input }
  update input (OverState s) = pure $ if anyInput (catchInput s.prevInput input) then initialState else OverState { prevInput: input }
  update input (ClearState s) = pure $ if anyInput (catchInput s.prevInput input) then initialState else ClearState { prevInput: input }
  update input (PlayState s) = do
    -- update pos
    let
      np = updatePlayer input s.player

      nbullets = map updateBullet s.bullets

      nenemies = map (updateEnemy s.player) s.enemies

      nparticles = map updateParticle s.particles

      nenemyBullets = map updateEnemyBullet s.enemyBullets
    -- player collision
    isMapColl <- isCollideScrollMap s.distance np
    let
      isEnemyColl = any (isCollideObjects np) nenemies

      isEnemyBulletColl = any (isCollideObjects np) nenemyBullets
    -- separate objects
    let
      { yes: collidedEnemies, no: notCollidedEnemies } = partition (\e -> any (isCollideObjects e) nbullets) nenemies

      { yes: collidedBullets, no: notCollidedBullets } = partition (\b -> any (isCollideObjects b) nenemies) nbullets
    -- add new objects
    let
      newBullets = addBullet input s.player

      newParticles = map (\e -> initParticle (position e)) collidedEnemies

      newEnemies = emergeTable s.distance

      newEnemyBullets = notCollidedEnemies >>= addEnemyBullet s.player
    -- fix player position
    nnp <- beInMonitor s.player np
    -- delete objects (out of monitor)
    let
      nnbullets = filter (not <<< isOutOfWorld) notCollidedBullets

      nnenemies = filter (not <<< isOutOfWorld) notCollidedEnemies

      nnparticles = filter (not <<< isOutOfWorld) nparticles

      nnenemyBullets = filter (not <<< isOutOfWorld) nenemyBullets
    -- game condition
    let
      isGameOver = isMapColl || isEnemyColl || isEnemyBulletColl

      isCatchOct (Oct _) = true

      isCatchOct _ = false

      isGameClear = any isCatchOct collidedEnemies
    pure
      $ case isGameClear, isGameOver of
          true, _ -> ClearState { prevInput: input }
          false, true -> OverState { prevInput: input }
          false, false ->
            PlayState
              $ s
                  { distance = s.distance + speed
                  , player = nnp
                  , bullets = nnbullets <> newBullets
                  , enemies = nnenemies <> newEnemies
                  , particles = nnparticles <> newParticles
                  , enemyBullets = nnenemyBullets <> newEnemyBullets
                  }
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
    }

initialState :: State
initialState = TitleState { prevInput: everyInput }

main :: Effect Unit
main = do
  let
    dr =
      DR
        { stage1: map0
        , stage2: map1
        , stage3: map2
        , stage4: map3
        }
  emo8 initialState dr emptyScore defaultConfig

-- TODO: readable
drawScrollMap :: Int -> Draw (DrawContext DR) Unit
drawScrollMap distance = do
  drawCond _.stage1 0 distance
  drawCond _.stage2 1 distance
  drawCond _.stage3 2 distance
  drawCond _.stage4 3 distance
  where
  drawCond :: ({ | DRRow } -> EmojiMap) -> Int -> X -> Draw (DrawContext DR) Unit
  drawCond f num d = do
    when (base - mapSize * mapTileInMonitor <= d && d < base + mapWidth)
      $ emap f mapSize (base - d) 0
    where
    base = num * mapWidth

-- TODO: readable
isCollideScrollMap :: forall a. Object a => Int -> a -> Update DR EmptyScore Boolean
isCollideScrollMap distance o =
  (\a b c d -> a || b || c || d)
    <$> collCond _.stage1 0 distance
    <*> collCond _.stage2 1 distance
    <*> collCond _.stage3 2 distance
    <*> collCond _.stage4 3 distance
  where
  collCond :: ({ | DRRow } -> EmojiMap) -> Int -> X -> Update DR EmptyScore Boolean
  collCond f num d = do
    if (base - mapSize * mapTileInMonitor <= d && d < base + mapWidth) then
      isCollideMap f mapSize walls (size o) ((position o).x + (d - base)) (position o).y
    else
      pure false
    where
    base = num * mapWidth
