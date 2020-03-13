# 1. Create recipe class
require_relative './recipe_ingredient'

class Recipe

  # can we write & read this attribute? or only one?
  attr_accessor :recipe_name
  attr_reader :people_served


  # 2. Create method that will takes 2 args: recipe name & how many people 
  # the recipe serves (set default to 1), when I create a new recipe
  @@all = []
  def initialize(recipe_name, people_served=4)
    @recipe_name = recipe_name # string
    @people_served = people_served # Integer
    # @ingredients = []              # in many-to-many, we WON'T do this.
    @@all << self                  # self is the new object
  end

  def self.all
    @@all
  end

  def recipe_ingredients
    # get all of the recipe_ingredient objects, for this specific ingredient

    # self === an instance of ingredient
    # RecipeIngredient has two parts, recipe and the ingredient. Give me all of the RI's where I == self
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self #compare objects to each other
    end
  end

  # ^^ returns an array of associated recipe ingredients

  def ingredients
    # self.recipe_ingredients
    recipe_ingredients.map do |r_i|
      r_i.ingredient
    end
  end



  # def add_ingredient(ingredient_obj) # instance of ingredient OR ingredient object
  #   @ingredients << ingredient_obj
  # end

  # instead of add_ingredient instance method - we create a new RecipeIngredient
  # ex: RecipeIngredient.new(recipe1, ingredient1)



  # how do I access the ingredients of this recipe
  # read the ingredients attribute (first-time around)

  

  # 3. Add getter & setter (reader & writer) methods for recipe name, people_served & ingredients

  # 7. Keep all of our recipes in one place


  
  # 5. Add a default argument for serving size
  
    # 6. How should we keep track of ingredients?
    # @ingredients = []

    # 7. How do we keep track of all new recipes created?
   

  # 8. Method that enables us to access all of our recipes (from a different class).
  
end
 

 


