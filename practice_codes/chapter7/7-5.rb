# 定数について
# 定数はメソッドの内部で作成できず、クラス構文の直下で作成する必要あり。
# 定数は再代入が可能

class Product
  DEFAULT_PRICE = 0
  DEFAULT_COUNT = 0


  DEFAULT_COUNT = 10

  # private_constant :DEFAULT_COUNT
end

# 参照方法は、クラス名::定数名
p Product::DEFAULT_PRICE
p Product::DEFAULT_COUNT # =>  private constant Product::DEFAULT_COUNT referenced (NameError)
p Product::DEFAULT_COUNT
Product::DEFAULT_COUNT = 100
p Product::DEFAULT_COUNT

Product.freeze

Product::DEFAULT_COUNT = 1000 # => can't modify frozen #<Class:Product> (FrozenError)