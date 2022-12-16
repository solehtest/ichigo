require_relative 'instant_noodle'

class InstantNoodleBuilder
  attr_reader :product

  # set product as instant noodle
  def initialize
    @product = InstantNoodle.new
  end

  # set ingredient 1
  def indomie_ingredient
    @product.add_ingredient('Indomie')
  end

  # set step 1
  def heat_the_water_to_a_boil_step
    @product.add_method_step('Heat the water to a boil')
  end

  # set step 2
  def put_noodle_into_boiling_water_step
    @product.add_method_step('Put noodles into boiling water')
  end

  # set step 3
  def add_sessioning_step
    @product.add_method_step('Add seasoning')
  end
end