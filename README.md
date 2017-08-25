## usersテーブル

|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|username|string|null: false|
|email|string|null: false, unique: true|

### Association
- has_many :projects_users
- has_many :supporters
- has_many :projects, through: :projects_users
- has_many :investments, through: :supporters


## projectsテーブル

|Column|Type|Options|
|------|----|-------|
|planner_id|string|
|main_title|string|null: false|
|goal_price|integer|null: false|
|end_date|integer|null: false|
|main_image|text|null: false|
|introduction|text|null: false|
|intro_body|null: false|
|intro_image|text|null: false|
|desc_title|text|null: false|
|desc_body|text|null: false|
|desc_image|text|null: false|
|content_title|text|null: false|
|content_body|text|null: false|
|content_image|text|null: false|
|feature_title|text|null: false|
|feature_top|text|null: false|
|feature_image|text|null: false|

### Association
- has_many :users, through: :projects_users
- has_many :projects_users
- belongs_to :planner
- has_many :investments


## plannerテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|null: false|
|location|text|
|birthday|text|
|email|string|null: false, unique: true|

### Association
- has_many :investments
- has_many :projects


## investmentsテーブル

|Column|Type|Options|
|------|----|-------|
|project_id|integer|foreign_key: true|
|title|string|null: false|
|body|text|null: false, unique: true|
|price|integer|null: false|
|image|text|null: false|
|stock|string|null: false|
|delivery_date|date|null: false|

### Association
- has_many :users, through: :supporters
- belongs_to :project
- belongs_to :planner
- has_many :supporters


## projects_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|project_id|integer|foreign_key: true|

### Association
- belongs_to :project
- belongs_to :user


## supportersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|investment_id|integer|foreign_key: true|

### Association
- belongs_to :investment
- belongs_to :user

## shipsテーブル
|Column|Type|Options|
|------|----|-------|
|supporter_id|integer|foreign_key: true|
|name|string|null: false|
|gender|integer|null: false, unique: true|
|birthday|date|null: false|
|mobile|integer|null: false|
|postal_code|integer|null: false|
|region|string|null: false|
|city|string|null: false|
|block|integer|null: false|


## 下記は追加機能で実装の可能性のため、記載。
※コメント、お気に入り登録、タグ付け。

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false, unique: true|
|user_id|integer|foreign_key: true|
|project_id|integer|foreign_key: true|

## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|project_id|integer|foreign_key: true|

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

## tags_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|tag_id|integer|foreign_key: true|

## projects_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|tag_id|integer|foreign_key: true|
|project_id|integer|foreign_key: true|
