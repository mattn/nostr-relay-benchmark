# nostr-relay-benchmark

Nostr 日本リレー内でのベンチマーク。

## ベンチマーク手法

イベント投稿、ID指定のイベント検索、イベント削除。これを1セットとして5回の実行に掛かる秒数を計測。あくまで僕の自宅からの接続なので関東でやると変わる可能性あり。またリレーを動かしているサーバのスペックが大きく異なる可能性あり。
以下の手順で実行。

```
$ ./benchmark-all.sh
```

## 対象リレー

wss://yabu.me (strfry)
wss://nos.lol (strfry)
wss://cagliostr.compile-error.net (cagliostr)
wss://nostr.compile-error.net (nostr-relay)
wss://relay-jp.nostr.wirednet.jp (nostream)
wss://relay.nostr.band (独自)
wss://nrelay-jp.c-stellar.net (strfry)
wss://r.kojira.io (strfry)
wss://relay-jp.shino3.net (strfry)

## 結果

|リレー                           |スコア|ソフトウェア|
|---------------------------------|------|------------|
|wss://yabu.me                    |8.11  |strfry      |
|wss://nos.lol                    |25.82 |strfry      |
|wss://cagliostr.compile-error.net|9.27  |cagliostr   |
|wss://nostr.compile-error.net    |9.02  |nostr-relay |
|wss://relay-jp.nostr.wirednet.jp |8.84  |nostream    |
|wss://relay.nostr.band           |26.62 |独自        |
|wss://nrelay-jp.c-stellar.net    |9.48  |strfry      |
|wss://r.kojira.io                |18.49 |strfry      |
|wss://relay-jp.shino3.net        |10.19 |strfry      |

![](https://image.nostr.build/8fdcf08a378f66b86ed8826c2efd437912923b8e1ab30bb8b79c336753b564a3.png)

## 結論

結果を見る限り、日本で使うリレーとしては以下の順で速い。

やぶみリレー
きりのリレー
mattn リレー(nostr-relay)
mattn リレー(cagliostr)
かすてらふぃリレー
しのリレー
こじらリレー


## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
