require_relative 'miso_soup'

class MisoSoupBuilder
  attr_reader :product

  # set product as miso soup
  def initialize
    @product = MisoSoup.new
  end

  # set ingredient 1
  def tofu
    @product.add_ingredient('Tofu')
  end

  # set ingredient 2
  def white_miso_paste
    @product.add_ingredient('White miso paste')
  end

  # set step 1
  def mix_miso_paste_into_boiling_water
    @product.add_method_step('Mix miso paste into boiling water')
  end

  # set step 2
  def add_tofu_and_serve
    @product.add_method_step('Add tofu and serve')
  end
end