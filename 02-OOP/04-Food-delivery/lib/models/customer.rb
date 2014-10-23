class Customer

  attr_reader :name, :address, :orders, :phone

  def initialize(name, address, phone, id)
    @name = name
    @address = address
    @id = id
    @phone = phone
  end
end