# メモ帳、タスク管理一括管理webアプリ

## はじめに
やらなければならないことが増えるとすぐ忘れて失敗することが多いため、
- 期限があるものをタスクとして
- 期限がないものをメモとして
扱うことが多い

→一括で管理できるアプリを作ってみたい！

と思い、java/jspとMySQLを使って簡単なwebアプリケーションを作ってみました

jspの基礎やデータベース連携(MySQL)などは[10日でおぼえるJSP&サーブレット入門教室 第4版](https://www.amazon.co.jp/10%E6%97%A5%E3%81%A7%E3%81%8A%E3%81%BC%E3%81%88%E3%82%8BJSP-%E3%82%B5%E3%83%BC%E3%83%96%E3%83%AC%E3%83%83%E3%83%88%E5%85%A5%E9%96%80%E6%95%99%E5%AE%A4-%E7%AC%AC4%E7%89%88-%E5%B1%B1%E7%94%B0-%E7%A5%A5%E5%AF%9B/dp/4798140341)を読んで学びました
自分としても簡単な操作や基本の部分しか扱えていないため、反省点やもっとこうしたい点は後にまとめて記したいと思います！！

## 内容
では実際にどんなものを書いたのか説明していきたいと思います

今回のアプリでは大きく3つのページが存在します
-メモ、タスクを表示するページ
-メモを編集するページへ遷移する基となるページ
-タスクを編集するページへ遷移する基となるページ
という構成です

それぞれに自分なりの工夫や考えがあるので一つ一つ説明していきます！

### 表示ページ

<img width="128" alt="スクリーンショット 2022-09-16 152600" src="https://user-images.githubusercontent.com/106229195/190571062-d9b6958d-d4c1-4010-a569-70d6bab536d6.png">

このページで工夫したのはデータベースごとの色です。色でどっちのデータベースか判断したり、単に真っ白よりも見やすくなると思ったので色を付けました

そしてそれぞれデータベースの上に詳細ボタンがありますが、ボタンを押すことで編集するページへ遷移します

### メモ編集ページ

<img width="94" alt="スクリーンショット 2022-09-16 152903" src="https://user-images.githubusercontent.com/106229195/190571459-abe75277-8f40-4867-bef4-2379337f950e.png">

このページはデータベースで扱いたい操作をそれぞれボタンに振り分けて表示している基となるページになります



## 反省・改善点

コーディングのスキルなどはもちろんのこと、もっとこうしたいなどと思ったことを書いていきます

-
