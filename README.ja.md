# NEMO

[![Build status](https://travis-ci.org/opyapeus/purescript-nemo.svg?branch=master)](https://travis-ci.org/opyapeus/purescript-nemo)

絵文字のゲームを作れる関数型ゲームエンジン。

※ 今のところBeta版です

[ [English](README.md) ]

![nemo](nemo.png)
![emodius](https://opyapeus.github.io/nemo/img/emodius-half.gif)

## 特徴

- 関数型言語（PureScript）でゲームロジックを見通し良く書けます。
- 絵文字素材を組み合わせて色々な表現ができます。
- ブラウザで動作するので配布が簡単です。

### なぜPureScript？

記述力と配布性の両方を担保できる関数型言語だからです。

|            | 記述力 | 配布性 |
| ---------- | ------ | ------ |
| Haskell    | ○      | △      |
| Elm        | △      | ○      |
| PureScript | ○      | ○      |

### なぜ絵文字？

制約があることで創造の余地が生まれるからです。

私は[PICO-8](https://www.lexaloffle.com/pico-8.php)のファンです。
PICO-8は、ドット絵や容量など厳しい制約がありますが、それがゲーム作りを楽しくしていると思います。

同じように、あえて絵文字しか使えない制約があることで、また一味違ったゲーム作りの楽しみがあると考えています。

## 仕様

- 言語: PureScript
- 画面サイズ: 1024x1024
- 絵文字: ユニコード絵文字各種 ※[Supported Emojis](docs/emoji.md)
- 背景色: HTML基本カラー16色
- コントローラ: キーボード（PC）、スワイプ（スマホ、タブレット）
- フレームレート: 約60FPS
- 動作環境: あらゆるブラウザ

## 簡易マニュアル（英語）

- [Usage](docs/usage.md)

## サンプルプログラム

最初にこのレポジトリをクローンします。

### インストール

```sh
npm i
bower i
```

### ビルド

※ もしwarningでビルドできない場合は、`pulp build`します。

```sh
npm run build
npm run build:examples
```

ブラウザでhtml（publicフォルダ）を開く

```sh
npm run open
```

タグを指定してアクセス

```url
public/index.html#hello
public/index.html#basic
public/index.html#emodius
```

## オンラインで遊ぶ

サンプルプログラムの「Emodius」をオンラインでプレイできます。

- [NEMO GAMES](https://opyapeus.github.io/nemo/index.html)

また、NEMOで作ったあなたのゲームもここに追加できます。
もし希望があれば、Github Pagesの[Repository](https://github.com/opyapeus/nemo)にissueかPRを立ててください。

## 開発中のリスト

- [ ] Web上でオンライン実行できる環境
- [ ] パフォーマンスの調整
- [ ] iOSのサウンド対応

## 様子見

- canvasの絵文字の回転 (45°, 135°, 225°, 315°) 表示の問題
- 絵文字のデフォルト表示形式 [CSS Fonts Module Level 4 - Editor’s Draft, 17 August 2018](https://drafts.csswg.org/css-fonts-4/#font-variant-emoji-prop)

## APIドキュメント

- [Module documentation on Pursuit](https://pursuit.purescript.org/packages/purescript-nemo/)

## 貢献

Beta版なので、しばらく待ってください。
もし改善点を見つけたら、issueをください。
ありがとうございます。

## ライセンス

[MIT](LICENSE)

※ 絵文字のグラフィックのライセンスは、各ベンダーが所有しています。
