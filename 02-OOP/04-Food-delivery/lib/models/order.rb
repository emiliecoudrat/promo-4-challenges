class Order

  attr_reader :id, :price, :delivery_guy, :delivery_date, :meals, :customer, :status_complete

  def initialize(id, price, delivery_guy, delivery_date, customer, meals, status_complete)
    @id = id
    @price = price
    @delivery_guy = delivery_guy
    @delivery_date = delivery_date
    @meals = []
    @status_complete = false
    @customer = customer
  end


end