# This class represents the relationship between recipe and ingredients
# Since each class is responsible for knowing about itself, the RecipeIngredient class is responsible for knowing about the relationship between recipes and ingredients


class RecipeIngredient
  attr_accessor :recipe, :ingredient #instance methods, can access attributes
  
  @@all = []
  def initialize(recipe_obj, ingredient_obj, amount="1 tbsp")
    @recipe = recipe_obj
    @ingredient = ingredient_obj
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

end
