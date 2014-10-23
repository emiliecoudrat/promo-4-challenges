class CustomerView

  def ask_for(something)
    puts "What's the customer #{something} ?"
    print ">"
    gets.chomp
  end

  def list(customers)
    customers.each { |customer| puts customer.name }
  end

end