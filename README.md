#　アプリケーション名
 TaskApp
# アプリケーション概要
やるべき事をリスト化しリスト内にタスクを追加することで、目標を管理することができる。
# URL
https://taskapp-37407.herokuapp.com/

# テスト用アカウント
・ Basic認証パスワード : admin
・ Basic認証ID : 2222
・ メールアドレス :test@test.com
・ パスワード : 1234qwer


# 利用方法
## 目標投稿
1. ユーザー新規登録画面からユーザー新規登録を行うことができる
2. リストを作成ボタンから、自身のやるべき事をリスト化することができる。
3. リスト毎にタスク（追加・編集・削除）をすることができる。

# アプリケーションを作成した背景
自身のテックキャンプ受講中の経験から、「学習に対しての目標を見失う」と言う課題を抱えていた。課題を分析した結果、「目標を容易に文章化させ目標をまとめる機会がない」と言うことが心因であると仮説を立てた。同様の問題を抱えている方も多いと想定し、心因を解決するために、目標をリスト化し、またその中にタスクを細分化させることによって自身のするべきことを明示してくれるアプリケーションを開発することにした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/13w3s_mVOcbTj7saKojl5A2aDCTakkCZPiPtTCCndQhA/edit#gid=1785908763

## 実装予定の機能
Javascriptを用いた各タスク毎へのプルダウンボタン（編集ページ・詳細ページへの遷移）の実装
user（ログイン・会員登録）以外の結合テストコードの実装
Reactを用いた、リスト間のタスク移動の実装

## テーブル設計
[![Image from Gyazo](https://i.gyazo.com/51d3d4bdf0afbb3e0603e74890665672.png)](https://gyazo.com/51d3d4bdf0afbb3e0603e74890665672)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/09b27a8601602e2d5d7c3f0fd263e320.png)](https://gyazo.com/09b27a8601602e2d5d7c3f0fd263e320)

## 開発環境
Ruby
HTML
SCSS
Javascript
CSS
MySQL
GitHub
Visual Studio Code

## ローカルでの動作方法
以下のコマンドを順に実行。
% git clone https://taskapp-37407.herokuapp.com/
% cd TaskApp
% bundle install
% yarn install

## 工夫したポイント
リスト内に各タスクを含めるためにeachを二重に使ったところ。
また見やすく、使いやすいアプリケーションを目指す中で、CSSの設定を細かく調べ試したこと。
未実装にはなりますが、Javascriptを用いた各タスク毎へのプルダウンボタン（編集ページ・詳細ページへの遷移）の実装で、remote: trueやJavascriptの繰り返し処理など自身で調べ、試したこと。


