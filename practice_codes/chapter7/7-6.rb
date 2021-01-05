class Product
  # クラスインスタンス変数
  @name = 'Product'

  def self.name
    # クラスインスタンス変数
    @name
  end

  def initialize(name)
    # インスタンス変数
    @name = name
  end

  def name
    # インスタンス変数
    @name
  end
end

class DVD < Product
  @name = 'DVD'

  def self.name
    @name
  end

  def upcase_name
    @name.upcase
  end
end

Product.name
product = Product.new('new Product')
dvd = DVD.new('new film')
# インスタンス変数は、クラスからインスタンス化された際に各オブジェクトに管理される変数
p product.name # => new Product
p Product.name # => Product
p dvd.name # => new film
p dvd.upcase_name # => NEW FILM
p DVD.name # => DVD


# インスタンス変数は継承関係に応じて両クラスで変数の内容が共有されるが、クラスインスタンス変数は各クラスで別々に内容が管理される（つまり衝突しないって事？）
# 両クラスでも両親子でも継承が出来る変数があって、それがクラス変数。
# インスタンス変数とクラスインスタンス変数とクラス変数がある。
# @@class_nameで作成可能。