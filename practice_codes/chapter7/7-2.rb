class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    format_price = Product.format_price(price)
    "name: #{name}, price: #{format_price}"
  end
end

product = Product.new("A greate move", 1000)
p product.to_s