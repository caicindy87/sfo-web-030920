# Intro to Inheritance

- Remember this lab? We can pass all the tests with less code!


- When we see repetition, it's time to refactor to make our code more DRY
- Inheritance through classes
  - Use the `.ancestors`, `#methods && .methods`, `#is_a?(target)`, `#class` to find out more about an object 
- What does using the `super` keyword do?
  A: Copies all the code from the superclass's method with the same name and puts it into your newly defined method, allowing you to augment methods in the parent class.


# What is Inheritance?
Inheritance - mechanism in Ruby that allows us to base one class off of another. When we do this, the class that is based off of the other (subclass) inherits all the abilities of the other class (superclass).

ex:
class Person < Animal
end

As you can see above, we use the 'less-than' sign with the subclass on the left side of the "<" and the superclass on the right.

* establishes an "is-a"/"is a type of" relationship with another object
* "A Person is a (type of) Animal."

# Why Inheritance?
A: Let's think about another example. We have a Person and a Dog class. Both are a type of Animal, so it makes sense to inherit behaviors from the Animal class. If we write our code so that Person and Dog inherit from Animal, we can DRY up our code a lot!

Benefits:
* share code between classes
* DRYing up our code
* organize our classes into a hierarchy, making our codebase easier to understand

ex:
'zebra' is-a type of 'mammal'
'Alaskan Salmon' is-a type of 'fish'  -  AlaskanSalmon < Fish
'Mammal' is-a type of 'Animal'
'Fish' is-a type of 'Animal'

----
**go through the codebase a bit and show students how to refactor this lab**
----

Cons:
* can only inherit from one superclass





Q: "Favoring (object) composition over inheritance"
A: Where I can, I would object composition as much as possible, and I would use Classical Inheritance where it makes sense.



Classical Inheritance (can inherit only from one class) - most classes inherit behavior from other classes

Object Composition (mix-in many different chunks of code - modules) - get abilites by mixing in reusable code chunks





Object composition - allows us to "compose" our classes' common behaviors / attributes from chunks of code called "modules". Allows us greater flexibility - we can cherry pick chunks of code and insert and remove them easier from classes.

------------------------
OOP language - mixin
------------------------
Java - Interface
Javascript - Object delegation, prototype chain
Ruby - Modules

* establishes an "has-a" relationship with another object (behavior / ability)

ex:
a dog has-a tail (can share tail with cat, lizard)
a car has-an engine (can share engine with plane, boat)

Naming conventions for Modules:
- *-like (ducklike, turkeylike)
- *-able (flyable, barkable)

*-able (use this to share common abilities amongst different models)
"a Dog has-an ability to bark" || "a Dog can bark(-able)" 
"a Squirrel has-an ability to bark" || "a Squirrel can bark(-able)" 

vs. 


*-like (use this to separate out what's unique between models)
thought process: "<this class> has ?-like behaviors"

"Bird has bird-like behavior" 
"Plane has plane-like behavior"



In Rails, modules usually live within a folder named "Concerns". You'll see more on that later.



Rhetorical Question: "So which model of inheritance should I use?"

A: The golden rule is to "prefer composition over inheritance" in all cases where it's possible. Be mindful, In some cases it may make more sense to use Classical inheritance, so this doesn't mean limit yourself to one or the other.

---
***show example of building classes compositionally && classically***  (doesn't have to build on last example)
---


compositional inheritance:
https://www.c-sharpcorner.com/UploadFile/3614a6/is-a-and-has-a-relationship-in-java/
