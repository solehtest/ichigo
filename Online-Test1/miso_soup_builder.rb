require_relative 'miso_soup'

class MisoSoupBuilder
  # set product as pancake
  def initialize
    @product = MisoSoup.new
  end

  # get all ingredients
  def ingredients
    [ @product.ingredient_two, @product.ingredient_one ]
  end

  # get dish preparation steps
  def method_steps
    [ @product.cooking_step_one, @product.cooking_step_two ]
  end
end