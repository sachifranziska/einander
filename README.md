# README

## **このアプリケーションについて**

* アプリケーション名：einander (アイナンダー)
* アプリケーション概要 :<br>
ドイツで働きたい人と、ドイツで就労経験がある人同士が、気軽に相談・アドバイス・情報のやりとりをすることができる。
* URL：
* テスト用アカウント：*メールアドレス  *パスワード
* 利用方法：<br>
  1. トップページのヘッダーからユーザー新規登録を行う。
  2. ”相談する”ボタンから相談の内容を投稿する。
  3. ”アドバイスする”ボタンから相談を１つ選び、アドバイスの内容を投稿する。
  4. ”情報をシェアする”ボタンから、シェアしたい情報を投稿する。
  5. トップページの一覧から投稿をクリックし、詳細を確認する。
* 作成した背景：<br>
過去の私自身や周りの友人達が、ドイツで働きたいと思った時、フレッシュな情報が手に入らず苦労した経験があった。また、現在の自分はドイツでの経験を活かして手助けをしたいが、どうすればいいかわからなかった。そこから、ドイツで働きたい人と、実際ドイツで就労経験がある人が、気軽にコミュニケーションを取れる場がないことが課題だと考えた。これを解決するため、両方のユーザー同士が気軽に相談やアドバイス、最新の情報を共有できるアプリケーションを開発することにした。
* 要件定義
* 実装した機能の画像・説明
* 実装予定の機能
* データベース設計
* 画面遷移図
* 開発環境：
  * フロントエンド：HTML,CSS
  *  バックエンド：Ruby (ver 2.6.5) / Ruby on Rails (6.0.0)
  *  インフラ：MySQL
  *  テスト：RSpec
  *  テキストエディタ：Visual Studio Code  
  *  タスク管理：GitHub
* ローカルでの動作方法
  
  
  
# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| birth_date         | date    | null: false               |
| job                | string  |                           |
| gender_id          | integer | null: false               |
| country_id         | integer | null: false               |
| city               | string  |                           |
| experience_id      | integer | null: false               |
| stay_length_id     | integer | null: false               |

### Association

- has_many :questions
- has_many :suggestions


## questions テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| category_id | integer    | null: false                    |
| content     | text       | null: false                    |
| user_id     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :suggestions


## suggestions テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| content     | text       | null: false                    |
| user_id     | references | null: false, foreign_key: true |
| question_id | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :question


## blogs テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| category_id | integer    | null: false                    |
| content     | text       | null: false                    |
| user_id     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one_attached :image