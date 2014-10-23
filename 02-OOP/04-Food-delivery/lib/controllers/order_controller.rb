require_relative '../models/order'

class OrderController

  attr_reader

  def initialize
    @orders = []
  end

private

  def create_order
    #only for manager
  end

  def access_info
    orders.each_with_index do |order, index|
      id = order.id

      date = order.date
      customer = order.customer
      status_complete = order.status_complete
      meal = order.meal
      price = order.price
      delivery_guy = order.delivery_guy
    end
      return @display_info.orders
  end

  def access_info_for_delivery_guy
  end

  def dispatch_order
    #only for manager
  end

  def mark_as_done
    if status == true
      puts "Complete"
    end
  end

  def delete_order
    # if mark_as_done
    #   return delete
    # end
  end

end