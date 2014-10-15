class Leboncoin
  attr_accessor :object, :price, :city
  def initialize(date, object, price, city)
    @date = Time.now
    @object = object
    @price = price
    @city = city
  end
end

new_annonce = Leboncoin.new('12/04/2014', 'Appartement', 1200, 'Paris')
p new_annonce
