# < 絶品グルメ >

## サイト概要
・レストランの人気メニューが点数で分かります。  
・メニューに対して、ブックマークができます。  
・レストランのメニューに対してユーザが投稿し、評価できます。

![zeppin1](https://user-images.githubusercontent.com/67733078/97169336-3f242500-17cd-11eb-9903-79b0d2645070.png)


### サイトテーマ
レストランに対して、どのメニューが美味しいのかが分かるサービスです。

### テーマを選んだ理由
とある人気店のラーメン屋に訪れた時、どのメニューが美味しいのかは分かりませんでした。  
1回目に訪れた時に食べたメニューでは、感動しませんでした。  
これは頼むメニューを間違えたと思い、2回目に別のラーメンを食べてみると、感動しました。  
「メニューごとの人気」が分かるサービスが欲しいと思ったため作成しました。

### ターゲットユーザ
- 優柔不断な方  
- はじめて入ったお店で、美味しい料理を食べたい方  
- メニューごとの美味しい度合いが知りたい方  
- メニュー選びで失敗したくない方  

### 主な利用シーン
- レストランに訪れた際に、どのメニューが人気でどれが美味しいのかをひと目で知ることができます。
- 他のユーザが投稿したレビューを見て、食べたいと思ったメニューをブックマークし記憶できます。

## 設計書
- ワイヤーフレーム(draw.io)  
https://app.diagrams.net/#G1Tm3LlYDr9wyLY8EqKEfRn8x6EaJrW3WY  

- アプリケーション詳細設計リンク（同スプレッドシート、にてER図・テーブル定義書を追加済み）  
https://docs.google.com/spreadsheets/d/10pVjLpwzXf_CYbOYnmY3KiBRRaQ29r_XGBwHcIVs9jk/edit#gid=1182221589

### 機能一覧　
- ユーザ登録、ログイン機能(devise)
- 簡単ログイン機能
- 投稿機能
  - 画像投稿機能(refile)
  - レーティング機能(jquery.raty.js)
- ブックマーク機能
- ページネーション機能(kaminari)
- 検索機能
- Google Map 表示機能(GoogleMapAPI)  
- 機能詳細リンク
https://docs.google.com/spreadsheets/d/10pVjLpwzXf_CYbOYnmY3KiBRRaQ29r_XGBwHcIVs9jk/edit#gid=0

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby 2.5.7,SQL
- フレームワーク：Ruby on Rails 5.2.4.1
- JSライブラリ：jQuery
- 仮想環境：Vagrant,VirtualBox
- Nginx
- Puma
- AWS：EC2, RDS, Route53
- Capistrano
- Googole Maps API
- Rspec

## 使用素材
- PAKUTASO
- Font Awesom
- お名前.com
- EC design
- https://github.com/wbotelhos/raty/tree/master/lib/images