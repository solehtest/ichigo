require_relative 'pancake'

class PancakeBuilder
  # set product as pancake
  def initialize
    @product = Pancake.new
  end

  # get all ingredients
  def ingredients
    [ @product.ingredient_one, @product.ingredient_two ]
  end

  # get dish preparation steps
  def method_steps
    [ @product.cooking_step_one, @product.cooking_step_two ]
  end
end