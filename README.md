# Emo8

An unique functional 2D game engine that can create games with only emoji.

[ [日本語](README.ja.md) ]

![emo8](emo8.jpg)
![emodius](https://opyapeus.github.io/emo8/img/emodius-half.gif)

## This Library Is For Someone Who...

- Thinks only emoji is interesting!
- Wants to share the game easily
- Wants to write a clear program using PureScript

### Why Emoji?

- Familiar materials that can be used anywhere
- Create games like assembling LEGO blocks
- Interesting that there are restrictions like [PICO-8](https://www.lexaloffle.com/pico-8.php)

### Why PureScript?

|            | Language abstraction | Distributability |
| ---------- | -------------------- | ---------------- |
| PureScript | ○                    | ○                |
| Haskell    | ○                    | △ ※1             |
| Elm        | △ ※2                 | ○                |

- ※1: Hard to convert into JavaScript
- ※2: No type classes

## Feature

|                       |                                                |
| --------------------- | ---------------------------------------------- |
| Screen Size           | Variable 256px~1024px（reasonable）            |
| Background Color      | 140 colors（HTML named colors）                |
| Material              | Unicode Emoji v13.0 （Single code point only） |
| Controller            | 8 buttons（up down left bottom ×2）            |
| Map                   | Map made of Emoji                              |
| Sound                 | Sound made of Emoji                            |
| Language              | PureScript                                     |
| Output File Volume    | ~1MB（reasonable）                             |
| Frame Rate            | About 60 FPS（requestAnimationFrame）          |
| Operating Environment | Web browser                                    |

## Controller

### Keyboard Input

```
 /¯¯¯\_/¯¯¯\
|  W  |  ↑  |
| A D | ← → |
|  S  |  ↓  |
 \___/¯\___/
```

### Screen Swipe

```
|¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯|
|   👆    |   👆   |
| 👈   👉 | 👈   👉 |
|   👇    |   👇   |
|________|________|
```

## Resource Editor

### Map

```
🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳⛅🈳🈳🎌🈳🈳🌧🈳
🈳🈳🈳🌳🗻🌳🈳🈳🈳
🈳🈳🌳🗻🗻🗻🌳🈳🈳
🈳🌳🗻🗻🗻🗻🗻🌳🈳
🌳🗻🗻🗻🗻🗻🗻🗻🌳
```

### Sound


```
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
```

## Manual

- [Usage Overview](doc/usage.md)
- [Module documentation on Pursuit](https://pursuit.purescript.org/packages/purescript-emo8)

## Sample Program

See [example](example) for the implementation.

```
yarn
```

### Output File

```
yarn bundle:example
```

```
open dist/example/hello/index.html
open dist/example/basic/index.html
open dist/example/emodius/index.html
```

### Development

```
yarn build
```

```
yarn dev
```

## Known Issue

- emoji rotate (45°, 135°, 225°, 315°) problem on canvas [Why won't emojis render when rotated to 45 (or 315) degrees?](https://stackoverflow.com/questions/39749540/why-wont-emojis-render-when-rotated-to-45-or-315-degrees)

## License

[MIT](LICENSE)
