require_relative 'recipe'
require_relative 'display'

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    @display.edit_list(@cookbook.recipes)
  end

  def create
    name = @display.create_recipe
    description = @display.give_a_description
    new_recipe = Recipe.new(name, description)
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    index = @display.destroy_recipe
    @cookbook.remove_recipe(index.to_i)
  end
end