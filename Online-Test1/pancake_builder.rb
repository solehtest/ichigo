require_relative 'pancake'
require_relative 'helpers/validator_helper'

class PancakeBuilder
  include ValidatorHelper

  attr_reader :product

  INGREDIENTS = ['Store-bought pancake mix', 'Water'].freeze
  METHOD_STEPS = ['Mix the ingredients', 'Cook them in a pan'].freeze

  # set product as pancake
  def initialize
    @product = Pancake.new
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