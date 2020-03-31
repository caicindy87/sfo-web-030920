# Intro to Sinatra and MVC 

## Goals
- [ ] How and why we use the MVC pattern
- [ ] How Sinatra serves data in response to RESTful routes
- [ ] How CRUD actions map to RESTful routes
- [ ] How to make an HTML form   `heart of the internet`

## [Sinatra](https://www.youtube.com/watch?v=qQzdAsjWGPg)

- *What do we mean by "convention over configuration?"*

- A DSL (domain-specific language) sitting on top of Ruby and Rack
  - *SQL*
  - *RSpec*
  - *Sinatra*

- Gives us extra functionality and abstraction. Ex:
  - `Rake`
  - `Pry`
  - `rspec`
  - `capybara`

- A lot of overlap with what's we've done already!
*controller actions ~~ methods*
*case statement ~~ controller*

- Explain the Model View Controller (MVC) pattern and give an example

  - Separation of Concerns
  - Model (M) - Wraps database, holds business logic
  - View (V) - html page, user interface
  - Controller (C) - passing messages between M && V, go-between

- *What does `class Book < ActiveRecord::Base` do for us?*
  - inherits active record methods

- `class ApplicationController < Sinatra::Base`
  - inheriting "controller" abilities

## Model View Controller
- One of many common programming archetectural paradigms
- *Why separate things out?*
- The MVC "Party"
    - Model = Data
        - Represents the data and nothing else
        - Interacts with database
        - Independent of view or controller
    - View = Interface
        - Displays data through controller
        - Sends user actions to controller
        - Independent of model and controller
    - Controller = Go-Between
        - Provides model data to view
        - Interprets user actions
        - Dependent on model and view
- MVC == Restaurant
    - Model = Food / Kitchen
    - Controller = Waiter
    - View = Table / Customer
    
- Why?
    - Agree on logic/pattern so others can read and use our code
        - A lot of a developer's job is dealing with other people's code
        - Minimize time spent figuring out how to talk to app
    - Separation of concerns
    - Securiy and access control
    - Simplify views, tailor user experience


- REpresentational State Transfer (REST)
    - Another convention
    - URL represents state of the data
        - `https://www.espn.com/nba/team/_/name/gs/golden-state-warriors`
        - `https://www.espn.com/nba/player/_/id/1966/lebron-james`
        - `https://www.espn.com/nba/players/lebron-james`
    - REST methods minimize URLs, maximize functionality
    - HTTP requests are stateless


- CRUD and RESTful routing
    - *How do CRUD actions map to SQL commands and HTTP requests?*
    Operation | SQL | HTTP Verb
    - | - | -
    Create | INSERT INTO | POST
    Read | SELECT | GET
    Update | UPDATE | PATCH / PUT (partial / total)
    Delete | DELETE | DELETE

    - *How do HTTP requests map to RESTful URLs?*
    URL | HTTP Request | POST Body | Result
    - | - | - | -
    `/books` | GET | N/A | all books (index)
    `/books/new` | GET | N/A | form to create book (new)
    `/books` | POST | params / book attributes | actually creates book (create)
    `/books/:id` | GET | N/A | gets specfic book (show)
    `/books/:id/edit` | GET | N/A | serve user a form that edits a particular books (edit)
    `/books/:id` | PATCH | book attrs | updates specified book (update)
    `/books/:id` | DELETE | N/A | deletes specified book (destroy)


        

## [Sinatra](http://sinatrarb.com/), revisited
- Create routes, controller methods, views
    - GET `/books/`
    - GET `/books/:id`
    - GET `/books/new`
        - Order of controller methods matters (controller == ~switch statement)
        - *What are the attributes for an HTML form (i.e. `action`, `method`, `name`, `value`, etc)?*
            - `pry` it up!
            - Experiment with devtools.
    - POST `/books/`
        - Play with params
        - `Book.create`
- ERB templates
    - `<%= %> / expression tag` vs `<% %> / scriptlet`
- File structure
    - `config.ru` = the server's runner file
- Params hash
- Review

## Deliverables
- [X] Create an index for your site that lists all of the existing books
- [X] Create a show page for a book
- [X] Create a "new" page with a form that allows you to create a new book. (2 actions)

### Reviews
[Config Setting](http://sinatrarb.com/configuration.html)
