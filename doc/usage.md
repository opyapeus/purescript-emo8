# Usage Overview

see [example](../example) for concrete implementation.

## Game Class

```purescript
class Game s where
  update :: Input -> s -> Update s
  draw :: s -> Draw Unit
  sound :: s -> Sound Unit
```

`s` is a game state type which you can flexibly define.

Each functions are executed in order update, draw, sound at every frame.

## Update Action

### Input

```purescript
type Input
  = { isUp :: Boolean
    , isLeft :: Boolean
    , isDown :: Boolean
    , isRight :: Boolean
    , isW :: Boolean
    , isA :: Boolean
    , isS :: Boolean
    , isD :: Boolean
    }
```

### Canvas Frame Collision (e.g.)

```purescript
isCollideCanvas :: Size -> X -> Y -> Update Boolean
```

Arguments

- `Size`: object size (length of one side of square)
- `X`: square's left position
- `Y`: square's bottom position

Return

- Boolean: whether there is a collision

After describing some actions, return next `s` at the end of update function.

## Draw Action

### Draw Emoji (e.g.)

```purescript
emo :: Emoji -> Size -> X -> Y -> Draw Unit
```

Arguments

- `Emoji`: specify one of supported emoji
- `Size`: emoji size (length of one side of square)
- `X`: square's left position
- `Y`: square's bottom position

※ Origin is based on left bottom. (not left top)

※ All emojis are treated as square.
Because these appearances depend on running device or browser.

### Draw Map (e.g.)

```purescript
emap :: EmojiMap -> Size -> X -> Y -> Draw Unit
```

Arguments

- `EmojiMap`: emoji map that you can edit.
- `Size`: map element (emoji) size. (not whole map size)
- `X`: map's left position
- `Y`: map's bottom position

## Sound Action

### Play Sound (e.g.)

```purescript
play :: Score -> Tone -> Tempo -> Sound Unit
```

※ The action is ignored until the score ends.

Arguments

- `Score`: score that you can edit.
- `Tone`: oscillation type (select one of [Sine, Square, Sawtooth, Triangle])
- `Tempo`: tempo (beat per minute)

## Map Edit

The type checker will tell you which emojis you can use!

```purescript
mountFuji :: EmojiMap
mountFuji = parse (SProxy :: SProxy Fuji)

type Fuji
  = """
  🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳⛅🈳🈳🎌🈳🈳🌧🈳
  🈳🈳🈳🌳🗻🌳🈳🈳🈳
  🈳🈳🌳🗻🗻🗻🌳🈳🈳
  🈳🌳🗻🗻🗻🗻🗻🌳🈳
  🌳🗻🗻🗻🗻🗻🗻🗻🌳
  """
```

※ 🈳 is the special emoji that represents vacant space.

## Sound Edit

The type checker will tell you which patterns you can use!

```purescript
beep :: Score
beep = parse (SProxy :: SProxy NHK)

type NHK
  = """
  🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
  """
```

- 🎹: note
- 🈳: vacancy

```
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means A4 (440 Hz)
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹: means A5 (880 Hz)
```

## Run

### Production

Main game loop function.

```purescript
emo8 :: forall s. Game s => s -> Config -> Effect Unit
```

### Development

Main game loop function for development.

```purescript
emo8Dev :: forall s. GameDev s => s -> Config -> Effect Unit
```

### GameDev Class

```purescript
class (Game s, Encode s, Decode s) <= GameDev s where
    saveLocal :: s -> Array LocalKey
```

saveLocal function is executed after Game class's functions at every frame.
It saves state json text to localstorage with the given LocalKey array (for multiple savepoints).

### Load Saved State

```purescript
loadStateWithDefault :: forall s. GameDev s => s -> LocalKey -> Effect s
```

Arguments

- `s`: fallback state which is used when localstorage key is not found.
- `LocalKey`: localstorage key which you saved with saveLocal function.
