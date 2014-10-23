class Restaurant

  attr_reader :name, :location, :phone, :nber_employees, :nber_customers, :menu

  def initialize(name, location, phone)
    @name = name
    @location = location
    @phone = phone
    @nber_employees = 4
    @nber_customers = 0
    @menu = [Meal.new("frites", 6), Meal.new("cheeseburger", 15), Meal.new("poisson", 17)]
  end

end