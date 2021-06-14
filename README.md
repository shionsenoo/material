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
- has_many  :items
- has_many  :orders


## items テーブル

| Column        | Type       | Options                         |
| ------------- | ---------- | ------------------------------- |
| size_id       | integer    | null: false                     |
| price         | integer    | null: false                     |
| quantity_id   | integer    | null: false                     |
| bundle_id     | integer    | null: false                     |
| item          | references | null: false, foreign_key: true  |
### Association
- has_one     :product
- belongs_to  :user
- belongs_to  :order


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


## products テーブル

| Column       | Type       | Options                         |
| ------------ | -------    | ------------------------------- |
| name         | string     | null: false                     |
| description  | text       | null: false                     |
| price        | integer    | null: false                     |
| item         | references | null: false, foreign_key: true  |
### Association
- belongs_to  :item
