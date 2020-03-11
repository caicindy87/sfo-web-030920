# One to Many Relationships

## Review
*What have we learned so far?*
- class methods vs instance methods
- class variables (@@all) vs instance methods (@name) vs local variables (name) vs global variable ($im_global)
- initialize (Class.new)
- setter vs getter OR reader vs writer
- attr_writer, attr_reader, attr_accessor
- iterators
- self

## Objectives
* Introduce domain modeling
  - Domain + Models = Domain Modeling
  - Relationships
* Implement one-to-many relationship
  - One object has many objects
  - One object belongs to another object
  - *What are some examples of one:many relationships?*
* Pass objects as arguments
  - *What are the advantages of referencing objects instead of instance variables?*
* Demonstrate single source of truth
  - Keep info in one place whenever possible
  - *What are the advantages of having a SSoT?*
* Infer method types through naming conventions
  - Class: `.class_method`
  - Instance: `#instance_method`

## Deliverables
* Create a User class. The class should have these methods:
  - `User#initialize` which takes a username
  - A reader method for the username
  - `User#tweets` that returns an array of Tweet instances for the particular User instance
  - `User#post_tweet` that takes a message, creates a new tweet, and adds it to the user's tweet collection
    * args: message, 
    * create tweet - Tweet.new(message)
    
* Create a Tweet class. The class should have these methods:
  - `Tweet#initialize`, setter and/or getter methods with appropriate arguments
  - `Tweet#message` that returns a string
  - `Tweet#user` that returns an instance of the user class
  - `Tweet.all` that returns all the Tweets created.
  - `Tweet#username` that returns the username of the tweet's user
