class Director
  attr_accessor :builder

  # set builder
  def initialize(builder)
    @builder = builder
  end

  # build pancake
  def make_pancake
    @builder.ingredient_one
    @builder.ingredient_two
    @builder.method_step_one
    @builder.method_step_two
  end

  # build miso soup
  def make_miso_soup
    @builder.ingredient_one
    @builder.ingredient_two
    @builder.method_step_one
    @builder.method_step_two
  end

  # build instant noodle
  def make_instant_noodle
    @builder.ingredient_one
    @builder.method_step_one
    @builder.method_step_two
    @builder.method_step_three
  end
end