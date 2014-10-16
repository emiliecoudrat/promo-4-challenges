class Restaurant
  # TODO: add relevant accessors if necessary

  attr_reader :city, :name, :type_of_food, :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = 0
    @rate = []
  end

  def rate(new_rating)
    @rate << new_rating
    @average_rating = @rate.inject(:+) / @rate.size.to_f
  end

  def self.filter_by_city(restaurants, city)
    # filtered_restaurants = []
    # restaurants.each do |restaurant|
    #   if restaurant.city == city
    #     filtered_restaurants << restaurant
    #   end
    # end
    restaurants.select { |restaurant| restaurant.city == city }
  end
  # TODO: implement #filter_by_city and #rate methods
end

# new_restaurant = Restaurant.new()
# jules_verne = Restaurant.new("paris", "Jules Verne")
# tour_d_argent = Restaurant.new("paris", "Tour d'argent")
# bocuse = Restaurant.new("lyon", "Paul Bocuse")
# restos = [jules_verne, tour_d_argent, bocuse]
# Restaurant.filter_by_city(restos,"lyon")