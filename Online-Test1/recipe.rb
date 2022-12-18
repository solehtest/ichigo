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

    # get recipe data ( name, ingredient and step method )
    def for(name)
      new(name)
    end
  end

  def initialize(name, is_set=false)
    @recipe = Recipe.get(name)
    is_set ? set_director : get_recipe_data
  end

  # get name, ingredient and step method of recipe
  def get_recipe_data
    raise 'Unrecognized recipe' unless @recipe

    @name = @recipe[:name]
    product = @recipe[:director].builder.product
    @ingredients = product.ingredients
    @method_steps = product.method_steps
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