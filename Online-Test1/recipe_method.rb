require_relative 'recipe'

class RecipeMethod
  def initialize(name, director)
    @name = name
    @director = director
  end

  # add method step
  def step(value)
    Recipe.get(@name)[:method_steps] |= @director.add_method_step(value)
  end
end