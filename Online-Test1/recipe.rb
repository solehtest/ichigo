require_relative 'director'
require_relative 'pancake_builder'
require_relative 'miso_soup_builder'
require_relative 'recipe_method'

class Recipe
  class << self
    def clear
      @recipes = nil
    end

    def set(name)
      @recipes ||= {}
      @recipes[name] = { name: name, ingredients: [], method_steps: [] }
      new(name, true)
    end

    def get(name)
      @recipes[name]
    end

    def for(name)
      new(name)
    end
  end

  # set recipe builder
  def initialize(name, is_set=false)
    @name = name
    if is_set
      case @name
      when 'Pancake'
        builder = PancakeBuilder.new
      when 'Miso Soup'
        builder = MisoSoupBuilder.new
      else
        raise 'Unrecognized recipe'
      end

      @director = Director.new(builder)
    end
  end

  def name
    Recipe.get(@name)[:name]
  end

  def ingredients
    Recipe.get(@name)[:ingredients]
  end

  def method_steps
    Recipe.get(@name)[:method_steps]
  end

  # adding ingredients
  def ingredient(value)
    Recipe.get(@name)[:ingredients] |= @director.add_ingredient(value)
  end

  # adding steps through the block code
  def method(&block)
    obj = RecipeMethod.new(@name, @director)
    obj.instance_eval(&block)
    obj
  end
end