# クラスの継承

class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_accessor :running_time

  def initialize(name, price, running_time)
    @name = name
    @price = price
    @running_time = running_time
  end

end


dvd = DVD.new('A perfect move', 2000, 120)
p dvd.name
p dvd.price
p dvd.running_time