require_relative 'miso_soup'

class MisoSoupBuilder
  attr_reader :product

  # set product as miso soup
  def initialize
    @product = MisoSoup.new
  end

  # set ingredient 1
  def ingredient_one
    @product.add_ingredient('Tofu')
  end

  # set ingredient 2
  def ingredient_two
    @product.add_ingredient('White miso paste')
  end

  # set step 1
  def method_step_one
    @product.add_method_step('Mix miso paste into boiling water')
  end

  # set step 2
  def method_step_two
    @product.add_method_step('Add tofu and serve')
  end
end