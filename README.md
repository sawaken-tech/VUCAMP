# README
# VUCAMP

## DB設計イメージ図
![image](https://user-images.githubusercontent.com/60286772/103384164-b7de8f00-4b38-11eb-890a-35b951b13497.png)

### Usersテーブル
|Column|Type|Options|
|------     |----       |-------|
|userName   |string     |null: false, unique: true, index: true|
|mail       |string     |null: false, unique: true|
|password   |string     |null: false, unique: true|
|birth      |date       ||
|sex        |string     ||
|rate_id    |references |foregin: true|
|comment_id |references |foregin: true|

### user_Association
- has_many: camps  through: :comments, :rates
- has_many: comments
- has_many: rates