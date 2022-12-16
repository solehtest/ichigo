class Director
  attr_accessor :builder

  # set builder
  def initialize(builder)
    @builder = builder
  end

  # build pancake
  def make_pancake
    @builder.store_bought_pancake_mix_ingredient
    @builder.water_ingredient
    @builder.mix_the_ingredient_step
    @builder.cook_then_in_a_pan_step
  end

  # build miso soup
  def make_miso_soup
    @builder.tofu_ingredient
    @builder.white_miso_paste_ingredient
    @builder.mix_miso_paste_into_boiling_water_step
    @builder.add_tofu_and_serve_step
  end

  # build instant noodle
  def make_instant_noodle
    @builder.indomie_ingredient
    @builder.heat_the_water_to_a_boil_step
    @builder.put_noodle_into_boiling_water_step
    @builder.add_sessioning_step
  end
end