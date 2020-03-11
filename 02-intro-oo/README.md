# Intro to Object Orientation 🧱

## A (Really Basic Bank Account) 🧩

A naive implementation of a bank account in Ruby using only a hash which stores key-value pairs:

```ruby
bank_account = {"user_id": 3, "balance": 100}
```

## Objects 📦

### The Concept of an Object 🤔

- `object` in programming domain
  - ["Ceci n'est pas une pipe"](https://i.kym-cdn.com/entries/icons/original/000/022/133/the-treachery-of-images-this-is-not-a-pipe-1948(2).jpg)
  - OOP: Organize code like real objects
  - Object = data (attributes) + behaviors (methods)
- Explain the difference between a class and an instance
  - Class => Instance as:
  - Blueprint => House
  - Factory => Car
- An instance of a class is an object

### Objects in Ruby 💎

- Just about everything in Ruby is an object!
  - `#class`
  - A class is an object, too!
- Methods are messages to objects

fido.bark

  - Methods: behaviors an object performs upon its internal data and other code objects
  - `#send`, `#respond_to?`
  - 1 + 2
    - `1.send(:+, 2)`
    - `1.+ 2       # same thing`
    - `.` is the message-sending operator
    - `1 + 2       # same thing`

### Creating Objects in Ruby 🏭

- **Create a class instantiate an instance of the class `BankAccount`**
  - TitleCase classes, e.g. `class ClassName`
  - `#new`
  - `#object_id`
- Pass arguments to `new` by defining an `#initialize` method in class
  - Ruby interpreter looks for `#initialize` of `class`
  - Set initial object attributes in `#initialize`
    - `balance`
  - ⚠️ *How could I set the type of BankAccount?*
- Instance methods
  - Methods that can be called on an instance
  - `def` & `end` as before, but now inside a class!
  - **Write method to print balance of account**
  - **Write method to deposit money into account**
  - ⚠️ *How can we write a method to withdraw money?*
  - Can only be used in object instance
  - "Getter" and "setter" methods
    - "Getters and setters" read or write data encapsulated by an object
    - `#attr_` is family of helper methods for classes which defines "getter" and "setter" methods for instances
    - Define attribute readers and writers using `attr_` macros
    - ⚠️ *For `balance` and `type`, do we want to use `attr_reader`, `attr_writer`, or `attr_accessor`?*
- Class methods
  - Methods that can be called on a class
  - `def self.class_method`
  - **Write method to remember all instances of `BankAccount`.**
  - Call methods on the implicit or explicit `self`
    - self refers to what object this method was called on
    - `binding.pry` inside class, instance methods to see what self is!
    - ⚠️ *What will `self` be at x, y, z?*
- Variable scope
  - Variables and methods are encapsulated depending on how and where they're defined
  - `vanilla` => local variable 
  - ^ doesn't save data to an object

  - `@vanilla` => instance variable 
  - ^ saves data to a instance of a class(object)

  - `@@vanilla` => class variable - 
  - ^ saves data to the whole class

  - `$vanilla` => global variable
  - ^ NEVER USE THIS! This is an easy way to introduce bugs.

- Reminder: stay Responsible, stay DRY
  - Code smells not quite nice/When used more than thrice
  - Methods should be about 5 lines long (general Rubyist rule)
  - Classes should be less than 100 lines long (general Rubyist rule)










































A: 'They're always looking for "arrays"!'