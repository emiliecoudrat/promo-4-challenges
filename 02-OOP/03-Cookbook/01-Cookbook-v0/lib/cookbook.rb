require 'csv'
require_relative "recipe"

class Cookbook
  attr_reader :csv_file, :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    CSV.foreach(csv_file) { |row| @recipes << Recipe.new(row[0], row[1], row[2]) }
  end

  def add_recipe(recipe)
    @recipes << recipe

    csv_options = { col_sep: ',' }

    CSV.open(@csv_file, 'a', csv_options) do |csv|
      csv << [recipe.name, recipe.description, recipe.rating]
    end
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)

    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each { |recipe| csv << [recipe.name, recipe.description, recipe.rating] }
    end
  end

  def fetch_recipe(index)
    @recipes[index]
  end

end


# mon_carnet = Cookbook.new(filename)

# mon_carnet.recipes.each do |recipe|
#   puts recipe.description
# end