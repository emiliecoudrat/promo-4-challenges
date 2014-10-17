require 'csv'

class Cookbook
  attr_reader :csv_file, :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    @csv = CSV.foreach(csv_file) { |row| @recipes << row }
  end

  # def recipes
  #   @recipes
  # end

  def add_recipe(recipe)
    @recipes << recipe
    # @csv << reco
  end

  def remove_recipe(recipe_id)
    @recipes -= [recipe_id]
  end
end