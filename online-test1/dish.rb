class Dish
  attr_reader :ingredients, :method_steps

  def initialize
    @ingredients = []
    @method_steps = []
  end

  # add ingredient
  def add_ingredient(value)
    @ingredients |= [ value ]
  end

  # add method step
  def add_method_step(value)
    @method_steps |= [ value ]
  end
end