# README

# アプリケーション名
CalendarApp

# アプリケーション概要
ユーザー機能がついた、カレンダーアプリとなっております。
カレンダー内に日記を投稿することができます。

# URL
https://org-app.onrender.com

# テスト用アカウント
 address: aaa@aaa
 pass: 111aaa

# 利用方法
1.トップページからユーザー登録を行う。
2.新規投稿ページから投稿(タイトル、日時、本文を記入)
3.カレンダー画面を操作、タイトルをクリックして詳細ページへ遷移する。

# アプリケーションを作成した背景
同居家族にヒアリングした際、物忘れ防止に日記をつけようかと思っているとの話題が出た。メモ程度の内容でいいので、いつ何をしたかが簡単に把握できるアプリケーションを作成しようと考えた。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1jw9-8gB9qPaPH5NH-osb1s0OiOx0g5uQUzv3FGE3gGY/edit#gid=982722306

# 実装予定の機能
日記の編集機能
bootstrap導入によるビューの実装

# データベース設計

# 画面遷移図

# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理

# ローカルでの動作方法
% git clone https://github.com/fjys1203
% cd org-app
% bundle install
% yarn install

# 工夫したポイント
ユーザーごとにカレンダーを管理できるようにした。
simple calenderのgemを導入後、うまくビューに反映させられるよう工夫した。
