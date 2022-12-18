require_relative 'director'
require_relative 'pancake_builder'
require_relative 'miso_soup_builder'
require_relative 'recipe_method'

class Recipe
  class << self
    def clear
      @recipes = nil
    end
  end

  # set recipe builder
  def set(name)
    case name
    when 'Pancake'
      builder = PancakeBuilder.new
    when 'Miso Soup'
      builder = MisoSoupBuilder.new
    else
      raise 'Unrecognized recipe'
    end

    @director = Director.new(builder)
  end

  # adding ingredients
  def ingredient(value)
    @director.add_ingredient(value)
  end

  # adding steps through the block code
  def method(&block)
    obj = RecipeMethod.new(@director)
    obj.instance_eval(&block)
    obj
  end
end