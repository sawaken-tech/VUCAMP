# README
# VUCAMP

## 概要
> アウトドアが大好きな人に
> アウトドアにチャレンジしたい人に
> キャンプ場をランダムで決めるサービス
>「VUCA(予測不可能な状態)」＋「CAMP」＝「VUCAMP」

## 制作背景
> キャンプに行きたいけど、どのキャンプ場がいいのかわからない。
> たくさんキャンプ場があってどこに決めたらいいか迷ってしまう。
> そんな人の手助けをして、キャンプに行くハードルを少しでも下げてあげたいという思いから制作に至る。

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

### Ratesテーブル
|Column|Type|Options|
|------     |----       |-------|
|user       |references |foregin: true|
|camp       |references |foregin: true|
|rate       |integer    |null: false,|

### rate_Association
- belongs_to: user
- belongs_to: camp
---

### Commentsテーブル
|Column|Type|Options|
|------     |----       |-------|
|user       |references |foregin: true|
|camp       |references |foregin: true|
|comment    |integer    |null: false,|

### rate_Association
- belongs_to: user
- belongs_to: camp
---

### NearStoresテーブル
|Column|Type|Options|
|------     |----       |-------|
|camp       |references |foregin: true|
|storeName  |string     |null: false|
|address    |string     |null: false, unique: true|
|workHour   |time       ||

### nearStore_Association
- belongs_to: user
- belongs_to: camp
---

### Imagesテーブル
|Column|Type|Options|
|------     |----       |-------|
|camp       |references |foregin: true|
|image      |string     |null: false|
|imageName  |string     ||

### image_Association
- belongs_to: user
- belongs_to: camp
---