# <絶品グルメ>

## サイト概要
・レストランの人気メニューが分かる。  
・ユーザの投稿メニューに対してイイね、ブックマークができる。  
・レストランのメニューに対してユーザが投稿し、評価できる。

### サイトテーマ
レストランの、どのメニューが美味しいかが分かるサービスです。

### テーマを選んだ理由
とあるラーメン屋に訪れた時、人気店ということは知っていたが、どのメニューが美味しいのかは分からなかった。  
1回目に訪れた時に食べたメニューでは、感動しなかったが、2回目に別のメニューを頼んでみたところ、感動した。  
「メニューごとの人気」が分かるサービスが欲しいと思ったから。

### ターゲットユーザ
1.優柔不断な人  
2.はじめて入ったお店で、美味しい料理を食べたい人  
3.メニューごとの美味しい度合いが知りたい人  
4.メニュー選びで失敗したくない人  

### 主な利用シーン
・レストランに訪れた際に、どのメニューが人気でどれが美味しいのかをひと目で知ることができる。

## 設計書
- ワイヤーフレーム  
https://app.diagrams.net/#G1Tm3LlYDr9wyLY8EqKEfRn8x6EaJrW3WY  

- アプリケーション詳細設計（同スプレッドシート、にてER図・テーブル定義書を追加済み）  
https://docs.google.com/spreadsheets/d/10pVjLpwzXf_CYbOYnmY3KiBRRaQ29r_XGBwHcIVs9jk/edit#gid=1182221589

### 機能一覧　
- ユーザ登録、ログイン機能（devise)
- 簡単ログイン機能
- 投稿機能
  - 画像投稿機能（refile)
  - レーティング機能(jquery.raty.js)
- ブックマーク機能
- ページネーション機能(kaminari)
- 検索機能
　
https://docs.google.com/spreadsheets/d/10pVjLpwzXf_CYbOYnmY3KiBRRaQ29r_XGBwHcIVs9jk/edit#gid=0




## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby 2.5.7,SQL
- フレームワーク：Ruby on Rails 5.2.4.1
- JSライブラリ：jQuery
- 仮想環境：Vagrant,VirtualBox

## 使用素材
- PAKUTASO
- Font Awesom
- お名前.com
- EC design
- https://github.com/wbotelhos/raty/tree/master/lib/images