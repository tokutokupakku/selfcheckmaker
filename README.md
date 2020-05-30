# データベース詳細設計

## Checks

|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|explanation|text|null: false|
|template_text|text|null: false|
|user_id|references|foreign_key: true, index: true|

### Association
- has_many :lists
- belongs_to :user

---
<br>
<br>


## Users

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|

### Association
- has_many :checks

---
<br>
<br>
## Lists

|Column|Type|Options|
|------|----|-------|
|listname|string|null: false|
|check_id|references|foreign_key: true, index: true|

### Association
- belongs_to :checks