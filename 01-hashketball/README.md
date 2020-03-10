# Hashketball Review

## Objectives

### Administrative
* Suggestion: don't code along with the lecture
* Lectures in Mod 1 happen before or in parallel to labs
* Lectures are time to learn, labs time to reinforce (Mod 1)
* By Mod 2, expection is to learn material beforehand via labs and use lectures as review 
* Lectures are time to reinforce, labs time to learn (Mod 2+)
* Claps and snaps


### More Administrative
  * Ask yourself: What's your optimal learning process / workflow?
  * ^ be open to new workflows / processes! 🧠  
  * Daily schedule
    - DQs
    - Lecture in morning or afternoon
    - Pair Programming
    - Lab time the rest of time outside of these activities
    - All mod's labs deployed the first day - guide your learning
    
  * Check Slack (and your labs sheet) - we'll let you know what labs you should try to have done by the next day


### Ruby
* Distinguish between data types in Ruby
* Show how to look up documentation for data types in Ruby
  * ruby-doc.org, search the method and class that is belongs to: `String#split`
  * a hashtag between the class and method name implies an `instance method`
  * a period between the class and method name implies a `class method`
* Demonstrate the use of common Array methods
  * `Array#each`
  * `Array#map`
  * `Array#select`
* Differentiate array methods by their respective return values
  * `Array#each` returns `an array - the original array that this method was called on` 100 -> 100
  * `Array#map` returns `modified array (block you pass defines how it's modified)` 100 -> 100

  num < 100 => true / false (condition)
  if - else (conditional)
  * `Array#select` returns `an array - only elements that pass the condition` 100 -> 10
* Employ TDD best practices in their labs
  * `rspec --fail-fast` handle one error at a time
  * Red, Green, Refactor
  * Make it work (shameless green), make it simple / fast

---

## LiveShare!

1. [Download and install](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare#quickstart-sharing) the Visual Studio Live Share extension for Visual Studio Code.

2. Wait for the extension to finish downloading and then reload VS Code when prompted.

3. Wait for Visual Studio Live Share to finish installing dependencies (you'll see progress updates 
   in the status bar).

4. Once complete, you'll see Live Share appear in your status bar.

5. Go to slack, and click on the session link located there - this will open it up in a browser. 
   When prompted, allow your browser to launch VS Code.

6. You'll be asked to sign in the first time you share (use your GitHub account), this allows others 
   to identity you when collaborating.

7. That's it!



### Deliverables

1. Write a method named game_hash - this method returns the statistics of the game.

### Calling Methods within Methods

You'll be building a series of methods that operate on the above game hash to return certain information about the teams and players. Each method will operate on the game hash by calling the `game_hash` method that returns the `game_hash`. In other words, since our `game_hash` method returns our hash, you can think of the `game_hash` like a variable that points to our hash and operate on it just as you would with hashes in previous lessons.

For example, let's say we want to build a method, `home_team_name`, that returns the name of the home team, `"Brooklyn Nets"`. We can call the method `game_hash` inside of our `home_team_name` method and operate on the game_hash:

```ruby
def home_team_name
  game_hash[:home][:team_name]
end

puts home_team_name
# => "Brooklyn Nets"
```

Now that we understand how we are going to operate on the `game_hash` inside of the methods we're building, let's build those methods:



### Iterating through Nested Levels:

This lab requires us to iterate through the many levels of our nested hash. DON'T TAKE YOUR UNDERSTANDING OF YOUR HASH FOR GRANTED. Every time you iterate into a new level of the hash, immediately place a `binding.pry` there. Then, run RSpec with the `learn` command to see what the key/value pairs of that hash are.

Let's take a look at an example:

```ruby
def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry

        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end
```

Open up the `hashketball.rb` file and add the line _require "pry"_ at the top and copy and paste the above method. Then, beneath the `end` that closes the method definition, call the method (`good_practices`) and, in your terminal, run the file with `ruby hashketball.rb`. Play around with the methods in each binding until you get comfortable with the iteration. This should give you a stronger sense of how we iterate through so many levels of a nested hash and what happens on each level. **Use this method of placing LOTS of bindings when you iterate in order to solve this lab.**

Okay, _now_ we're ready to build out methods:

### Method Building

* Build a method, `num_points_scored` that takes in an argument of a player's name and returns the number of points scored for that player.

  * Think about where in the hash you will find a player's `:points`. How can you iterate down into that level? Think about the return value of your method. Remember that `.each` returns the original collection that you are iterating over. How can you return the number of points for a particular player?

* Build a method, `shoe_size`, that takes in an argument of a player's name and returns the shoe size for that player.
  * Think about how you will find the shoe size of the correct player. How can you check and see if a player's name matches the name that has been passed into the method as an argument?
* Build a method, `team_colors`, that takes in an argument of the team name and returns an array of that teams colors.
* Build a method, `team_names`, that operates on the game hash to return an array of the team names.
* Build a method, `player_numbers`, that takes in an argument of a team name and returns an array of the jersey number's for that team.
* Build a method, `player_stats`, that takes in an argument of a player's name and returns a hash of that player's stats.
  * Check out the following example of the expected return value of the `player_stats` method:


    ```bash
    player_stats("Alan Anderson")
    => { :number => 0,
         :shoe => 16,
         :points => 22,
         :rebounds => 12,
         :assists => 12,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 1
       }
    ```

  * Build a method, `big_shoe_rebounds`, that will return the number of rebounds associated with the player   that has the largest shoe size. Break this one down into steps:
  * First, find the player with the largest shoe size
  * Then, return that player's number of rebounds
  * Remember to think about return values here. Use `binding.pry` to drop into your method and understand what it is returning and why.

## Resources

* [Codecademy](http://www.codecademy.com/dashboard) - [A Night at the Movies](http://external.codecademy.com/courses/ruby-beginner-en-0i8v1/0/1)

<p class='util--hide'>View <a href='https://learn.co/lessons/advanced-hashes-hashketball'>Hashketball</a> on Learn.co and start learning to code for free.</p>
