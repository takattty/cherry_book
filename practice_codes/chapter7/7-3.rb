# クラスの継承

class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_accessor :running_time

  def initialize(name, price, running_time)
    # スーパークラスのinitializeメソッドを呼び出す
    super(name, price)
    @running_time = running_time

    # スーパークラストサブクラスの引数の数が同じ場合は、引数なしのsuperで渡された引数全てをスーパークラスに渡せる。
    # 但しsuper()だと引数なしでスーパークラスの同名メソッドを呼び出せる

    # メソッドのオーバーライド
    # dvd.to_sというto_sメソッドを呼び出してるから、スーパークラスのto_sメソッドを呼び出せるのね。
    def to_s
      "#{super}, running_time: #{running_time}"
    end
  end

end


dvd = DVD.new('A perfect move', 2000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s