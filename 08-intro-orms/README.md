# Intro to ORMs (Object Relational Mappers) 🍬

Object (OP) - Ruby
Relational (Database) - SQL (sqlite3)
Mappers - add these two together

## Goals 🧘🏿

- [ ] Build a database 🏗
- [ ] Review SQL queries 🛢
- [ ] Define C.R.U.D. 🎨
- [ ] Define ORM 🍬
- [ ] Create an ORM 🍭

## Database and SQL Review with Books and Authors 🏗

*What does the design philosophy of* Domain Modeling *look like in a relational database?*

**1. Create a *books* table and an *authors* table. Each book record stores a *title* and each author record stores a *name*. A book belongs to an author.**

Book >-- Author

**books**
| id | title | author_id (foreign key)
|-|-|-|
|1| The Lord of the Rings | 1
|2| Old Man And the Sea | 2

**authors**
| id | name |
|-|-|
| 1 | J.R.R. Tolkien |
| 2 | Ernest Hemingway|
| 3 | Fitzgerald Scott|



**2. Write the SQL to find all books written by a certain author given the author's id (3).**

`SELECT * FROM books WHERE books.author_id = 3`

#=> [1,"Fitzgerald Scott"]

**3. Create a *books* table and an *authors* table where each author can have one or multiple books. Books should have a *title* and authors should have a *name*.**

Books >--< Author (many-to-many === "join table")
maintain SSoT

**books**
| id | title
|-|-|
|1| The Lord of the Rings 
|2| Old Man And the Sea 


**collaborations**
| id | book_id | author_id |
|-|-|-|
|1| 1 | 2|
|2| 2| 1|
...

**authors**
| id | name |
|-|-|
| 1 | J.R.R. Tolkien |
| 2 | Ernest Hemingway|
| 3 | Fitzgerald Scott|



## CRUD 🎨

*What are the four ways we can interact with data? What might this interaction look like in SQL? In Ruby?*

### Create

- SQL(table): `CREATE TABLE books(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT)`
- SQL(row): `INSERT INTO books(title) VALUES("The Greatest Book")`
- Ruby(objects): `Book.new("The Greatest Book")`

### Read (one item's attributes)

- SQL (row's column): `SELECT title FROM books WHERE id = 2;`
- Ruby (object's attrs): `book.title` 

### Update

- SQL(row): `UPDATE books SET title = "Unique Name" WHERE books.id = 2;`
- Ruby object's attrs: `book.title = "Unique Name"`

### Delete

- SQL(row): `DELETE FROM books WHERE books.id = 2`
- Ruby objects: `<garbage collecter handles this>`

## The Active Record Pattern 🧩

- The 'Active Record pattern' is an approach (& architectural pattern) to accessing data in a database using an object-oriented programming.

- A **database** corresponds to a **domain**.

- Each **table** in the database corresponds to a Ruby **class** (model).

- Each **row** in a table corresponds to an **instance** of that model (class).

- Each **column** in our table corresponds to an **attribute** of that model.

- A **schema** corresponds to a **domain model**.


## IMPLEMENTATION 🍭

### Why? 🤔

*Problem*: Data is *not persistent*. Ruby stores data in memory. 
*Solution*: Relational database saved, accessed, and altered in `.db` file.

### Examine structure and tooling 🛠

- `run.rb` file in `./bin`
- Outsourced reqs in `./config/environment.rb`
    - *What is namespacing of SQLite3?*
    - SQLite3 module with Database class
- Store database file in `./db/database_name.db`
- `./lib` contains classes
- Gemfile(.lock) helps manage dependencies
    - Bundler is a gem which manages other gems
    - `bundle init` creates a Gemfile
    - `bundle install` installs gems
    - Gemfile lists required gems and source
    - Gemfile.lock records installed gems *and* dependencies
- Rakefile
    - Rake is a task runner!
    - `rake -T` shows tasks
    - `rake task_name` runs task
    - `rake console` better than `irb` because it contains program information

### Wrap SQL in Ruby 🍬

- Guidelines
    - Execute SQL command in method
    - Return Object instead of Enumerable
- Create methods
    - `@id` attribute
    - `#save` a tweet
- Helper methods
    - `#in_db?`
    - `#set_instance_id`
- Read methods
    - Get `.all` tweets!
    - Return class instances instead of hashes from database
    - `.find_by_id`
- Update method
    - `#update` with object attribute
    - ActiveRecord gem will help with `#save` management
- Delete
    - `.delete_all` from array, db
    - `#delete` 
- ***WARNING*** SQL Injection!
    - [Little Bobby Tables](https://xkcd.com/327/)
    - Sanitize SQL parameters to defend!

### For your edification... 🦜

- [ ] **A tweet belongs to a user and has some message content - must have user_id**
- [ ] **The belongs_to must have a user_id on it**
- [ ] **A user has a username, and has many tweets**
- [ ] **A tweet can have many tags and a tag can have many tweets**

Still hungry? [Watch Avi Flombaum build a Metaprogrammed Abstract ORM.](https://www.youtube.com/watch?time_continue=2&v=hts7TjpPw-8)
