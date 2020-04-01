# Sinatra Forms with Associated Objects

## Goals 🐲

- [ ] Review CRUD in the context of web applications 🛠
- [ ] Review REST 🧮
- [ ] Implement RESTful routing 🛤
- [ ] Build a form for creating an object with associations 🕸

## CRUD 🛠

- ⚠️ _**What is CRUD? Give examples for a model, with HTTP methods, resource paths, and template files.**_

![crud](crud.png)

| CRUD | AR Method | HTTP Verb | RESTful Path | .erb file? |
|----|----|----|----|----|
|Create|#create|POST|'/models'|redirect => '/models/:id'|
|Read|#find/find_by/where|GET|'/models','/models/:id'|#index / #show|
|Update|#update|PATCH/PUT|'/models/:id'|show/index|
|Delete|destroy|DELETE|'/models/:id'|'/models'|



## REST 🧮

- ⚠️_**What is REST?**_

A: convention for web apps, where you have 7 restful routes

GET '/models' #index - return all of the models
GET '/models/:id' #show - render specific resource

GET '/models/new' #new - render form to create model
POST '/models' #create - creates a new model in the db


GET '/models/:id' #edit - render form to edit model
PATCH/PUT '/models' #update - updating a resource (partially/total)

DELETE '/models/:id' #destroy - deleting a resource


![rest2](rest2.png)

## Implementation of RESTful Routing 🛤

- Read
  - `#index`
  - `#show`
- Create
  - `#new`
    - HTML `form`s need `action` (where) and `method` (how) attributes
    - `input`s need `type`s (of input data), `name`s (aka keys), and `ic`s (for CSS and JS targetting)
      - In Sinatra, `params` hold `name`:`value` pairs
    - [What's a `label`?](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/label)
  - `#create`
- Update
  - `#edit`
    - Hidden inputs help us pass settings and data through forms
      - `<input type="hidden" name="_method" value="patch">`
      - `Rack::MethodOverride`
  - `#update`
- Delete
  - `#destroy`

### Render vs. Redirect

#### Render (`erb`)

- `erb` syntax allows you to render partials
- Knows to look in views folder to render a certain view
- Pass information via `instance variables` to your views from the controller
- `erb` does NOT create a new `GET` request; instead it's a reference to a file that will load in the browser

#### Redirect (`redirect`)

- A redirect will make a separate http request to the server
- Does not allow for `instance variables` to be passed along

#### When to use each one

General rule of thumb: If it’s a *successful* `post`, `patch`, `delete`, or an *unsuccessful* `get` do a redirect (otherwise render).

Things to keep in mind:

1. Don’t make a new HTTP request when not necessary
2. Remember that a “render” doesn't change the url of the page, make sure the urls make sense to the user when you use render.
3. When we submit a form successfully we want to redirect to prevent resubmission of that form

## Associated Objects 🕸

- Model Relationships
  - A book belongs to an author.
- Nested forms
  - Use to create an instance _and_ a relationship
  - Nested forms => nested params
- Nested forms in Sinatra
  ⚠️ _**What will `name = game[reviews][][content]` look like in params?
  - `params#except`
  - When `Model.new` and `Model.save` are useful

## Takeaways ⛹🏽‍♀️

- [ ] RESTful routes map CRUD actions to HTTP methods
- [ ] HTML elements and attributes are essential to writing clean, accessible code
- [ ] The `erb` method renders a template; `redirect` triggers another HTTP request and controller action.
- [ ] Nested forms are needed when created an instance and a relationship simultaneously.


