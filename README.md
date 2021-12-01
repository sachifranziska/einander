# README

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