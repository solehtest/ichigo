class Dish
  attr_reader :ingredients, :method_steps

  def initialize
    @ingredients = []
    @method_steps = []
  end

  # add new ingredient
  def add_ingredient(ingredient)
    @ingredients |= [ ingredient ]
  end

  # add new method step
  def add_method_step(method_step)
    @method_steps |= [ method_step ]
  end
end