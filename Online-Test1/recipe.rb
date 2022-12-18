require_relative 'director'
require_relative 'pancake_builder'
require_relative 'miso_soup_builder'
require_relative 'recipe_method'

class Recipe
  attr_reader :name, :ingredients, :method_steps

  class << self
    def clear
      @recipes = nil
    end

    # make a recipe based on food name
    def set(name)
      @recipes ||= {}
      @recipes[name] = { name: name, ingredients: [], method_steps: [] }
      new(name, true)
    end

    # get data on ingredients and how to make from a recipe
    def get(name)
      @recipes[name]
    end

    # get data name, ingredient and method step from a recipe 
    def for(name)
      new(name)
    end
  end

  def initialize(name, is_set=false)
    @recipe = Recipe.get(name)
    is_set ? set_recipe : get_recipe
  end

  # set recipe builder
  def set_recipe
    case @recipe[:name]
    when 'Pancake'
      builder = PancakeBuilder.new
    when 'Miso Soup'
      builder = MisoSoupBuilder.new
    else
      raise 'Unrecognized recipe'
    end

    @director = Director.new(builder)
  end

  # get data recipe by food name
  def get_recipe
    @name = @recipe[:name]
    @ingredients = @recipe[:ingredients]
    @method_steps = @recipe[:method_steps]
  end

  # adding ingredients
  def ingredient(value)
    @recipe[:ingredients] = @director.add_ingredient(value)
  end

  # adding steps through the block code
  def method(&block)
    obj = RecipeMethod.new(@recipe[:name], @director)
    obj.instance_eval(&block)
    obj
  end
end