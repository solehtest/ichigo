require_relative 'pancake_builder'
require_relative 'miso_soup_builder'

class Recipe
  # YOUR CODE HERE
  attr_reader :name

  class << self
    def clear
      @name = nil
      @product = nil
    end

    # set recipe name
    def for(name)
      new(name)
    end
  end

  def initialize(name=nil)
    @name = name
    @product = get_product
  end

  # get dish recipe
  def get_product
    case @name
    when 'Pancake'
      PancakeBuilder.new
    when 'Miso Soup'
      MisoSoupBuilder.new
    else
      raise 'Unrecognized recipe'
    end
  end

  # get product ingredients
  def ingredients
    @product.ingredients
  end

  # get dish preparation steps
  def method_steps
    @product.method_steps
  end
end