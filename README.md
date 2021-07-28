#テーブル設計

## usersテーブル

| Column     | Type   | Option   |
| --------------------------------
| email      | string | NOT NULL |
| password   | string | NOT NULL |
| name       | string | NOT NULL |
| profile    | text   | NOT NULL |
| occupation | text   | NOT NULL |
| position   | text   | NOT NULL |

### Associations
- has_many :prototypes
- has_many :comments


## prototypesテーブル

| Column     | Type       | Option   |
|-------------------------------------
| title      | string     | NOT NULL |
| catch_copy | catch_copy | NOT NULL |
| concept    | concept    | NOT NULL |
| image      | image      | NOT NULL |
| user       | user       | NOT NULL |

### Associations
- has_many :comments
- belongs_to :users


## commentsテーブル

| Column    | Type       | Option   |
|------------------------------------
| text      | text       | NOT NULL |
| user      | references |          |
| prototype | references |          |

### Association
- has_many :comments
- belongs_to :users

