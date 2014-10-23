require_relative '../views/customer_view'
require_relative '../db/customer_db'
require_relative '../models/customer'

class CustomerController

  attr_reader :customers_database

  def initialize
    @customers_database = CustomerDatabase.new
    @customer_view = CustomerView.new
  end

  def list_customers
     #va me cherche mon array customers dans ma costumers database
    @customer_view.list(@customers_database.customers)
  end

  def create_and_store_customer
    #ask_for name du customer_view
    #ask_for adress du costumer_view
    name = @customer_view.ask_for("name")
    address = @customer_view.ask_for("address")
    new_customer = Customer.new(name, address, id)
    @customers_database.add_customer_to_db(new_customer)
  end

end

p charlot = Customer.new("Charlot", "paris", 32)