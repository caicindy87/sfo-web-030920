require_relative './recipe_ingredient'

class Ingredient
  attr_reader :name
  
  @@all = []

  def initialize(name)
    @name = name
    # @recipes = [] # NOT SSoT
    @@all << self
  end

  def self.all
    @@all
  end

  # def add_recipe(recipe_obj) # instance of recipe OR recipe object
  #   @recipes << recipe_obj
  # end


  def recipe_ingredients
    # get all of the recipe_ingredient objects, for this specific ingredient

    # self === an instance of ingredient
    # RecipeIngredient has two parts, recipe and the ingredient. Give me all of the RI's where I == self
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.ingredient == self #compare objects to each other
    end
  end

  def recipes
    # [<r_is>].recipe
    self.recipe_ingredients.map do |r_i|
      r_i.recipe
    end
  end

end
