# テーブル設計

## users テーブル

| Column                | Type      | Options                   |
| --------------------- | --------- | ------------------------- |
| nickname              | string    | null: false               |
| email                 | string    | null: false, unique: true |
| encrypted_password    | string    | null: false               |

### Association

- has_many :lists
- has_many :purchases

## lists テーブル

| Column              | Type        | Options                        |
| ------------------- | ----------- | ------------------------------ |
| title               | string      | null: false                    |
| user                | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :task_cards

## task_cards テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| memo   | string     | null: false                    |
| list   | references | null: false, foreign_key: true |

### Association

- belongs_to :list