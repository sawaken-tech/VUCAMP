# README
# VUCAMP

---
## DB設計
![image](https://user-images.githubusercontent.com/60286772/103384164-b7de8f00-4b38-11eb-890a-35b951b13497.png)

### Usersテーブル
|Column|Type|Options|
|------     |----       |-------|
|userName |string     |null: false, unique: true, index: true|
|mail     |string     |null: false, unique: true|
|password |string     |null: false, unique: true|
|birth    |date       ||
|sex      |string     ||
|rate     |references |foregin: true|
|comment  |references |foregin: true|

### user_Association
- has_many: camps  through: :comments, :rates
- has_many: comments
- has_many: rates
---

### Campsテーブル
|Column|Type|Options|
|------     |----       |-------|
|campName   |string     |null: false, unique: true, index: true|
|address    |string     |null: false, unique: true|
|capacity   |string     ||
|image      |references |foregin: true|
|price      |integer    ||
|level      |integer    ||
|workHour   |time       ||
|nearStore  |references |foregin: true|
|rate       |references |foregin: true|
|comment    |references |foregin: true|

### camp_Association
- has_many: users  through: :comments, :rates
- has_many: comments
- has_many: rates
- has_one:  nearStore
- has_one:  image
---
