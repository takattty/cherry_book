class Product1
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    format_price = Product1.format_price(price)
    "name: #{name}, price: #{format_price}"
  end
end

class Product2
  def initialize
    product2 = Product1.new("A perfect move", 2000)
    product2.to_s
  end
end

product1 = Product1.new("A greate move", 1000)
p product1.to_s

# 他のクラスから呼び出す方法が分かってない。
product = Product2.new
p product