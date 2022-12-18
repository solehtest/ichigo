require_relative 'director'
require_relative 'pancake_builder'
require_relative 'miso_soup_builder'
require_relative 'recipe_method'

class Recipe
  attr_reader :name, :ingredients, :method_steps

  class << self
    # delete all recipes
    def clear
      @recipes = nil
    end

    # save recipe
    def set(name)
      @recipes ||= {}
      @recipes[name] = { name: name }
      new(name, true)
    end

    # get recipe data
    def get(name)
      @recipes[name]
    end

    # get the recipe data, then set the ingredient and method step data
    def for(name)
      recipe = get(name)
      product = recipe[:director].builder.product
      recipe[:ingredients] = product.ingredients
      recipe[:method_steps] = product.method_steps
      new(name)
    end
  end

  def initialize(name, is_set=false)
    @recipe = Recipe.get(name)
    is_set ? set_director : get_recipe_data
  end

  # get the name of the recipe, ingredients and step method 
  def get_recipe_data
    @name = @recipe[:name]
    @ingredients = @recipe[:ingredients]
    @method_steps = @recipe[:method_steps]
  end

  # choose which recipe to make
  def set_director
    case @recipe[:name]
    when 'Pancake'
      builder = PancakeBuilder.new
    when 'Miso Soup'
      builder = MisoSoupBuilder.new
    else
      raise 'Unrecognized recipe'
    end

    @recipe[:director] = Director.new(builder)
  end

  # choose ingredient
  def ingredient(value)
    @recipe[:director].add_ingredient(value)
  end

  # choose method step
  def method(&block)
    obj = RecipeMethod.new(@recipe[:director])
    obj.instance_eval(&block)
    obj
  end
end