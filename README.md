# README

## usersテーブル

|column|type|options|
|------|----|-------|
|name  |string|null: false, unique: true|
|email |text|null: false, unique: true|
|password|string|null: false|

### Assocation

has_many :characters
has_many :books

## charactersテーブル

|column|type|options|
|------|----|-------|
|name  |string|null: false, index: true|
|age   |integer|    |
|sex   |string|null: false|
|species|string|null: false|
|belong|string|null: false|
|text  |text|null: false|
|image |string|     |
|book  |references|null: false, foreign_key: true|
|user  |references|null: false, foreign_key: true|

### Assocation

belongs_to book
belongs_to user

## booksテーブル

|column|type|options|
|------|----|-------|
|title |string|null: false, index: true|
|image |string|     |
|user  |references|null: false, foreign_key: true|

### Assoction

has_many :characters
belongs_to :user

