class Director
  attr_reader :builder

  # set builder
  def initialize(builder)
    @builder = builder
  end

  # add ingredient
  def add_ingredient(value)
    @builder.add_ingredient(value)
  end

  # add method step
  def add_method_step(value)
    @builder.add_method_step(value)
  end
end