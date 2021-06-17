# README

## users テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| email               | string | null: false |
| password            | string | null: false |
| encrypted_password  | string | null: false |
| nickname            | string | null: false |
| name                | string | null: false |
### Association
- has_many   :items
- belongs_to :orders


## items テーブル

| Column        | Type       | Options                         |
| ------------- | ---------- | ------------------------------- |
| product       | string     | null: false                     |
| price         | integer    | null: false                     |
| contents      | text       | null: false                     |
| stock         | string     | null: false                     |
| maker         | string     | null: false                     |
| category_id   | integer    | null: false                     |
| user          | references | null: false, foreign_key: true  |
### Association
- belongs_to  :user
- has_many    :orders


## orders テーブル

| Column  | Type       | Options                         |
| ------- | ---------- | ------------------------------- |
| user    | references | null: false, foreign_key: true  |
| item    | references | null: false, foreign_key: true  |
### Association
- has_many    :items
- belongs_to  :user
- has_one     :address


## addresses テーブル

| Column         | Type       | Options                           |
| -------------- | ---------- | --------------------------------- |
| postcode       | string     | null: false                       |
| prefecture_id  | integer    | null: false                       |
| city           | string     | null: false                       |
| block          | string     | null: false                       |
| building       | string     |                                   |
| phone-number   | string     | null: false                       |
| order          | references | null: false, foreign_key: true    |
### Association
- belongs_to  :order



