

require_relative '../recipe'

module RecipeHelper
  def recipe(name, &block)
    obj = Recipe.new(name)
    obj.instance_eval(&block)
    obj
  end
end