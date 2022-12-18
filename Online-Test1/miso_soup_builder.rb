require_relative 'miso_soup'
require_relative 'helpers/validator_helper'

class MisoSoupBuilder
  include ValidatorHelper

  attr_reader :product

  INGREDIENTS = ['Tofu', 'White miso paste'].freeze
  METHOD_STEPS = ['Mix miso paste into boiling water', 'Add tofu and serve'].freeze

  # set product as miso soup
  def initialize
    @product = MisoSoup.new
  end

  # add ingredient
  def add_ingredient(value)
    invalid_element?(INGREDIENTS, value, 'ingredient')
    
    @product.add_ingredient(value)
  end

  # add method step
  def add_method_step(value)
    invalid_element?(METHOD_STEPS, value, 'method step')

    @product.add_method_step(value)
  end
end