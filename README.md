# README
# VUCAMP

---
## DB設計
![image](https://user-images.githubusercontent.com/60286772/103385980-0e9b9700-4b40-11eb-8f60-1ab81062264f.png)

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
