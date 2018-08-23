# NEMO

[ [English](README.md) ]

※ 今のところBeta版です

関数型言語と絵文字を使って、視覚記号的なゲームを作れるユニークなゲームエンジン。

![nemo](nemo.png)
![emodius](https://opyapeus.github.io/nemo/img/emodius-half.gif)

## 主な特徴

- 関数型言語（PureScript）を使って、簡単にゲームを作れます。
- 絵文字しか使えないことが、逆にあなたの創造性を刺激します。
- 作ったゲームは、ブラウザが動作するあらゆる端末に配布できます。

### なぜPureScriptなのですか

最初に、私は関数型言語を使って簡単なゲームを作りたいと思いました。

Haskell ->
もしそれで全てができたのなら、素晴らしかったです。
しかし、あらゆる端末に配布することが難しいという問題がありました。

Elm ->
配布を考えた場合、良い選択肢の一つでした。
しかし、型クラスのサポートがありません。
また、Elmアーキテクチャに従うことが推奨されます。

PureScript ->
Haskellのような型クラスサポートがあります。
また、Javascriptにコンパイルされます。
したがって、あらゆる端末のブラウザで動作します！

### なぜ絵文字だけなのですか

何か制約があったほうが、創造性を刺激します。

私は[PICO-8](https://www.lexaloffle.com/pico-8.php)に代表されるファンタジーコンソールにとても触発されました。

それらは、使用できるスプライトやサウンド、あるいは容量に大きな制約を持っています。

しかし逆に、これらの制約は創造力を掻き立て、ゲーム作りをより楽しいものにしています。

同じように、Webというプラットフォームに対して、あえて絵文字しか使えない制約は面白いと思っています。

## オンラインで遊ぶ

- [NEMO GAMES](https://opyapeus.github.io/nemo/index.html)

NEMOで作ったあなたのゲームも、ここに追加することができます。

もし希望があれば、Github Pagesの[Repository](https://github.com/opyapeus/nemo)にissueかPRを作ってください。

## インストール

```sh
bower i purescript-nemo
```

## 始めてみよう

- [Usage](docs/usage.md)

## 仕様

- 言語: PureScript
- 画面サイズ: 1024x1024
- 絵文字: ユニコード絵文字1207文字
- 色: HTML基本色16色
- マップエディタ: 生のテキスト（絵文字）の編集
- サウンドエディタ: 生のテキスト（絵文字）の編集
- 入力端末: キーボード、タッチスクリーン
- フレームレート: おおよそ 60 FPS
- 動作環境: あらゆる端末のブラウザ (いくらかGPUの力が必要です)

## 入力（操作）

### キーボード

```plain
 /¯¯¯\_/¯¯¯\
|  W  |  ↑  |
| A D | ← → |
|  S  |  ↓  |
 \___/¯\___/
 ```

### タッチスクリーン ※試用中

スマホやタブレットについては、キーボードの割り当てがそのまま、画面の右側か左側をスワイプすることに対応します。

## 動作サンプル

最初にこのレポジトリをクローンしてください。

インストール

```sh
npm i
bower i
```

ビルド

```sh
npm run build
npm run build:examples
```

ブラウザでhtml（publicフォルダ）を開く

```sh
npm run open
```

タグを指定してアクセス（リロードが必要かもしれません）

```url
public/index.html#hello
public/index.html#basic
public/index.html#emodius
```

## 利用可能な絵文字

- [Supported Emojis](docs/emoji.md)

## 開発中のリスト

### 優先度高い

- デバッグモードの追加
- サウンドの充実（ノイズなど）
- タッチスクリーン入力の改善

### 中程度

- Web上でオンライン実行できる環境
- パフォーマンスの調整
- iOSのサウンド対応

### 低い

- 絵文字パーサー（全ての絵文字に対応）
  
### 様子見

- canvasの絵文字の回転 (45°, 135°, 225°, 315°) 表示の問題
- 絵文字のデフォルト表示形式 [CSS Fonts Module Level 4 - Editor’s Draft, 17 August 2018](https://drafts.csswg.org/css-fonts-4/#font-variant-emoji-prop)

## モジュールのドキュメント

- [Module documentation on Pursuit](https://pursuit.purescript.org/packages/purescript-nemo/)

## 貢献

Beta版なので、しばらく待ってください。
もし改善点を見つけたら、issueをください。
ありがとうございます。

## ライセンス

[MIT](LICENSE)

※ 絵文字のグラフィックのライセンスについては、各ベンダーが所有しています。
