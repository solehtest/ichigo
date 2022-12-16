class Director
  attr_accessor :builder

  # set builder
  def initialize(builder)
    @builder = builder
  end

  # build pancake
  def make_pancake
    @builder.store_bought_pancake_mix
    @builder.water
    @builder.mix_the_ingredient
    @builder.cook_then_in_a_pan
  end

  # build miso soup
  def make_miso_soup
    @builder.tofu
    @builder.white_miso_paste
    @builder.mix_miso_paste_into_boiling_water
    @builder.add_tofu_and_serve
  end

  # build instant noodle
  def make_instant_noodle
    @builder.indomie
    @builder.heat_the_water_to_a_boil
    @builder.put_noodle_into_boiling_water
    @builder.add_sessioning
  end
end