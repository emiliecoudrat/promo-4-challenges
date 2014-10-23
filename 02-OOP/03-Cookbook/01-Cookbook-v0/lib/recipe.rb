class Recipe
  attr_reader :name, :description, :rating
  attr_accessor :done

  def initialize(name, description, rating)
    @name = name
    @description = description
    @rating = rating
    @done = false
  end

  def mark_as_tested
    @done = true
  end
end