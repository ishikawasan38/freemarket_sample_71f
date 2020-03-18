# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|nickname|string|null: false|
|email|string|unique: true|
|pass|string|null: false, length: { minimum: 7 }|
|birthday|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_furigana|string|null: false|
|first_name_furigana|string|null: false|
|credit_card|string|null: false|
|tel|string||
### usersAssociation
- has_many :items
- has_many :comments
- has_many :address

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|destination_name|string|null: false|
|destination_name_furigana|string|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address_number|string|null: false|
|any_address_info|string||
## addressAssociation
- belongs_to :user


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|user_id|integer|foreign_key: true|
|brand_id|intger|foreign_key: true|
|category_id|integer|null: false|
|name|string|null: false|
|description|string|null: false|
|status|string|null: false|
|price|string|null: false|
|shipping_charges|string|null: false|
|days_to_ship|string|null: false|
### itemsAssociation
- belongs_to :user
- belongs_to :brand
- belongs_to :category
- belongs_to :basket
- has_many :comments
- has_many :photos

## photosテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|item_id|integer|null: false|
|image|string|null: false|
### photosAssociation
- belongs_to :item

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|item_id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
### commentsAssociation
- belongs_to :user
- belongs_to :item

## basketテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|item_id|integer|foreign_key: true|
|user_id|integer|foreign_key: true|
### basketAssociation
- belongs_to :user
- has_many :items

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|integer|null: false|
### brandsAssociation
- has_many :items
- has_ancestry

## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
### categorysAssociation
- has_many :items
- has_ancestry