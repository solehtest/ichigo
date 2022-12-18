require_relative 'recipe'

class RecipeMethod
  def initialize(director)
    @director = director
  end

  # add method step
  def step(value)
    @director.add_method_step(value)
  end
end