# README

# アプリケーション概要
--------------------------------------------------------------
近くにショッピングロケーションが沢山ある方の悩みはなんでしょうか。それは、「
〇〇の商品がA店よりもB店の方が〇〇円安い」などお店毎の値段の違いを覚えておく
ことでしょう。もちろん、日用品であれば買い物メモを書き溜めていると思いますが、
メモの紛失、置き忘れなどいざ使う時に困ってしまったことも１度や２度では無いの
ではないでしょうか。このアプリケーションでは、商品情報を一括でまとめ流ことが
できます。買い物中の記録が面倒な時は画像、商品名、値段だけを登録し、帰宅して
から詳細を入力することもできます。また、よく行くお店、行きたいお店を登録すれ
ば、お店に関連づけられた商品情報だけをみることもできます。

# URL(未実装)


# テストアカウント(未実装)


# 利用方法
--------------------------------------------------------------


# 要件

| 機能              | 目的         | 詳細        | ストーリー      |
| :---------------- | :---------- | :---------- | :------------ |
| 


# 実装機能(未実装)



# 実装予定機能
スマートフォンにも対応

# ローカル環境での動作方法



# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| username        | string | null: false |
| email           | string | null: false |
| password        | string | null: false |

### Association

- has_many :items
- has_many :stores

## items テーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| user               | references | null: false, foreign_key: true|
| title              | string     | null: false                   |
| jan_code           | integer    |                               |
| model_num          | string     |                               |
| price              | integer    | null: false                   |
| store_name         | integer    | null: false                   |
| daytime            | date       | null: false                   |

### Association

- has_one :stores
- belongs_to :user

## stores テーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| store_name         | string     | null: false                   |
| phone              | integer    |                               |
| station            | string     | null: false                   |
| zip_code           | string     | null: false                   |
| prefecture_id      | integer    | null: false                   |  
| city_id            | integer    | null: false                   |  
| line               | string     | null: false                   |

### Association

- has_one :items
- belongs_to :user