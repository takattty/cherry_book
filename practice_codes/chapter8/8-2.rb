module Loggable

  # ミックスインしたクラスでもprivateメソッドで使用する事になる。
  # private 

  def log(text)
    puts "[LOG] #{text}"
  end
end

# 下記のようにincludeしてクラスに機能を追加することをミックスインという。
class Product
  # include Loggable
  # Loggableモジュールのメソッドを特異メソッド（クラスメソッド）としてミックスインする
  extend Loggable

  def title
    log 'title is called.'
    'A great movie'
  end

  def self.create_products(names)
    # ログメソッドをクラスメソッド内(self.hoge)で呼び出す。つまりlogメソッドもクラスメソッドになっていると判断出来る。
    log 'create_products is called'
  end
end

class User
  include Loggable

  def name
    log 'name is called'
    'Alice'
  end
end

product = Product.new
p product.title

user = User.new
p user.name

p product.log 'publick?'

p Product.create_products([])
p Product.log('Hello!')

# 引数で渡したモジュールを含んでいるか
p Product.include?(Loggable)
# includeされているモジュールの配列を返す
p Product.included_modules # => [Kernel]
# モジュール含むスーパークラスの情報も配列で返す
p Product.ancestors # => [Product, Object, Kernel, BasicObject]