# モジュールの特異メソッドとしてsqrtメソッドを利用する
Math.sqrt(2)

module Loggable

  PREFIX = '[LOG]'.freeze

  def log(text)
    puts "#{PREFIX} #{text}"
  end

  # logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
  module_function :log
end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello!')

class Product
  include Loggable

  def title
    log 'Title is called!'
    'A great movie'
  end
end

class Calculater
  include Math
  
  def calc_sqrt(num)
    # ミックスインとしてMathモジュールのsqrtメソッドを使う
    sqrt(num)
  end
end

product = Product.new
p product.title

# logメソッドはprivateなので外部からは呼び出せない=module_functionでモジュール関数となったメソッドは、他のクラスにミックスインすると自動的にprivateになるから。
p product.log 'Hey!!!'

p Loggable::PREFIX

calculater = Calculater.new
p calculater.calc_sqrt(2)