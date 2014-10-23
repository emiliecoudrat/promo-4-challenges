
require_relative '../models/order'
require_relative '../controllers/order_controller'

class OrderView

  def display_info(manager, delivery_guy)
    if manager
      puts "#{order.id} : #{order.date} #{order.customer} #{order.status_complete} #{order.meal} #{order.price} #{order.delivery_guy}"
    else
    end
  end

  def display_add_order
  end

  def dispatch_order
  end

  def display_mark_as_done
  end

  def display_delete_order
  end

end