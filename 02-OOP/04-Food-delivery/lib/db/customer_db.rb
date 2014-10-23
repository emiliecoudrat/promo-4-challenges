require 'csv'
require_relative '../models/customer'

class CustomerDatabase

  attr_reader :customers

  def initialize
    #@csv_file = "db/customer_db.csv"
    @customers = []
    @customer = Customer.new("Emilie", "Paris", 40)
    #CSV.foreach(@csv_file) { |row| @customers << Customer.new(row[0], row[1]) }
  end

  def add_customer_to_db(customer)
    @customers << customer
    CSV.open(@csv_file, 'a') do |csv|
      csv << [customer.name, customer.address]
    end
  end

  def fetch_customer_id
    @customer.id
  end

end