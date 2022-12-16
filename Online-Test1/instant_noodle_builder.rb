require_relative 'instant_noodle'

class InstantNoodleBuilder
  attr_reader :product

  # set product as instant noodle
  def initialize
    @product = InstantNoodle.new
  end

  # set ingredient 1
  def ingredient_one
    @product.add_ingredient('Indomie')
  end

  # set step 1
  def method_step_one
    @product.add_method_step('Heat the water to a boil')
  end

  # set step 2
  def method_step_two
    @product.add_method_step('Put noodles into boiling water')
  end

  # set step 3
  def method_step_three
    @product.add_method_step('Add seasoning')
  end
end