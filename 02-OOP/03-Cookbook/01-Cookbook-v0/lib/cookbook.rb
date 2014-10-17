require 'csv'
require_relative "recipe"

class Cookbook
  attr_reader :csv_file, :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    CSV.foreach(csv_file) { |row| @recipes << Recipe.new(row[0], row[1]) }
  end

  def add_recipe(recipe)
    @recipes << recipe

    csv_options = { col_sep: ',' }

    CSV.open(@csv_file, 'a', csv_options) do |csv|
      csv << [recipe.name, recipe.description]
    end
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)

    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each { |recipe| csv << [recipe.name, recipe.description] }
    end
  end
end


# filename = "/Users/emiliecoudrat/code/emiliecoudrat/promo-4-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv"

# mon_carnet = Cookbook.new(filename)

# mon_carnet.recipes.each do |recipe|
#   puts recipe.description
# end