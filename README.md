# EMO8

A functional 2D game engine that can create emoji games.

[ [日本語](README.ja.md) ]

## This Is For Someone Who...

- Wants to make games in functional language
- Thinks it is troublesome to prepare game materials
- Wants to distribute the game easily
- Looks for a start to learn purescript

### Why PureScript?

|            | Language abstraction | Distributability |
| ---------- | -------------------- | ---------------- |
| PureScript | ○                    | ○                |
| Haskell    | ○                    | △ ※1             |
| Elm        | △ ※2                 | ○                |

- ※1: Hard to convert into JavaScript
- ※2: No type classes

### Why Emoji?

- The material anybody can use easily
- Create games like assembling LEGO blocks
- Interesting that there are restrictions like [PICO-8](https://www.lexaloffle.com/pico-8.php)

## Feature

|                       |                                                |
| --------------------- | ---------------------------------------------- |
| Display               | Variable 256px~1024px（reasonable）            |
| Background Color      | 140 colors（HTML named colors）                |
| Emoji                 | Unicode Emoji v13.0 （Single code point only） |
| Input                 | 8 buttons（up down left bottom ×2）            |
| Map                   | Map made of Emoji                              |
| Sound                 | Sound made of Emoji                            |
| Language              | PureScript                                     |
| Compiled File Volume  | ~1MB（reasonable）                             |
| Frame Rate            | About 60 FPS（requestAnimationFrame）          |
| Operating Environment | Web browser                                    |

## Controller

### Keyboard

```
 /¯¯¯\_/¯¯¯\
|  W  |  ↑  |
| A D | ← → |
|  S  |  ↓  |
 \___/¯\___/
```

### Touch screen（Swipe）

```
|¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯|
|   👆    |   👆   |
| 👈   👉 | 👈   👉 |
|   👇    |   👇   |
|________|________|
```

## Resource Edit

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
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
```

## Known Bugs

- emoji rotate (45°, 135°, 225°, 315°) problem on canvas [Why won't emojis render when rotated to 45 (or 315) degrees?](https://stackoverflow.com/questions/39749540/why-wont-emojis-render-when-rotated-to-45-or-315-degrees)

## License

[MIT](LICENSE)
