require_relative 'pancake'

class PancakeBuilder
  attr_reader :product

  # set product as pancake
  def initialize
    @product = Pancake.new
  end

  # set ingredient 1
  def store_bought_pancake_mix
    @product.add_ingredient('Store-bought pancake mix')
  end

  # set ingredient 2
  def water
    @product.add_ingredient('Water')
  end

  # set step 1
  def mix_the_ingredient
    @product.add_method_step('Mix the ingredients')
  end

  # set step 2
  def cook_then_in_a_pan
    @product.add_method_step('Cook them in a pan')
  end
end