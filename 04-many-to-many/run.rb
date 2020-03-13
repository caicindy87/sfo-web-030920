# Require gems
require 'pry'
require 'faker'

# Faker::Food.ingredient => 'Salt'    (gives us a random ingredient)
# Faker::Food.dish => 'Chicken Wings' (gives us a random recipe)

# Require files
require_relative './recipe'
require_relative './ingredient'
require_relative './recipe_ingredient'

# Instantiate recipes, ingredients



# initialize ingredients

30.times do 
  Ingredient.new(Faker::Food.ingredient)
end

5.times do 
  new_recipe = Recipe.new(Faker::Food.dish)

  3.times do 
    RecipeIngredient.new(new_recipe, Ingredient.all.sample) #connects a recipe to an ingredient
  end

end






# Pry and puts
binding.pry
puts "yee, Lecture 4"