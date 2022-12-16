require_relative 'pancake'

class PancakeBuilder
  attr_reader :product

  # set product as pancake
  def initialize
    @product = Pancake.new
  end

  # set ingredient 1
  def ingredient_one
    @product.add_ingredient('Store-bought pancake mix')
  end

  # set ingredient 2
  def ingredient_two
    @product.add_ingredient('Water')
  end

  # set step 1
  def method_step_one
    @product.add_method_step('Mix the ingredients')
  end

  # set step 2
  def method_step_two
    @product.add_method_step('Cook them in a pan')
  end
end