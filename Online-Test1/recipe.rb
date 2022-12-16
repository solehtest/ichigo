require_relative 'director'
require_relative 'pancake_builder'
require_relative 'miso_soup_builder'
require_relative 'instant_noodle_builder'

class Recipe
  # YOUR CODE HERE
  attr_reader :name, :ingredients, :method_steps

  class << self
    def clear
      @name = nil
      @ingredients = nil
      @method_steps = nil
    end

    # set recipe name
    def for(name)
      new(name)
    end
  end

  def initialize(name=nil)
    @name = name
    build_product
  end

  # build product
  def build_product
    case @name
    when 'Pancake'
      builder = PancakeBuilder.new
      director = Director.new(builder)
      director.make_pancake
    when 'Miso Soup'
      builder = MisoSoupBuilder.new
      director = Director.new(builder)
      director.make_miso_soup
    when 'Instant Noodle'
      builder = InstantNoodleBuilder.new
      director = Director.new(builder)
      director.make_instant_noodle
    else
      raise 'Unrecognized recipe'
    end

    @ingredients = builder.product.ingredients
    @method_steps = builder.product.method_steps
  end
end