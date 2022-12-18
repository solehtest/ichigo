require_relative '../recipe'

require 'pry'

describe Recipe do
  before do
    Recipe.clear    

    Recipe.describe do
      recipe 'Pancake' do
        ingredient 'Store-bought pancake mix'
        ingredient 'Water'

        method do
          step 'Mix the ingredients'
          step 'Cook them in a pan'
        end
      end

      recipe 'Miso Soup' do
        ingredient 'Tofu'
        ingredient 'White miso paste'

        method do
          step 'Mix miso paste into boiling water'
          step 'Add tofu and serve'
        end
      end
    end
  end

  it 'records the ingredients and method of each recipe' do
    pancake_recipe = Recipe.for('Pancake')

    expect(pancake_recipe.name).to eq 'Pancake'
    expect(pancake_recipe.ingredients).to eq ['Store-bought pancake mix', 'Water']
    expect(pancake_recipe.method_steps).to eq ['Mix the ingredients', 'Cook them in a pan']

    soup_recipe = Recipe.for('Miso Soup')

    expect(soup_recipe.name).to eq 'Miso Soup'
    expect(soup_recipe.ingredients).to eq ['Tofu', 'White miso paste']
    expect(soup_recipe.method_steps).to eq ['Mix miso paste into boiling water', 'Add tofu and serve']

    instant_noodle_recipe = Recipe.for('Instant Noodle')

    expect(instant_noodle_recipe.name).to eq 'Instant Noodle'
    expect(instant_noodle_recipe.ingredients).to eq ['Indomie']
    expect(instant_noodle_recipe.method_steps).to eq ['Heat the water to a boil', 'Put noodles into boiling water', 'Add seasoning']
  end

  it 'Unrecognized recipe' do
    expect { Recipe.for('Burger') }.to raise_error(RuntimeError, 'Unrecognized recipe')
  end
end