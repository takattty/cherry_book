module Loggable
  # 特異メソッドとしてメソッドを定義
  def self.log(text)
    puts "[LOG] #{text}"
  end
end

# 他のクラスにミックスインしなくてもモジュール単体でそのメソッドを呼び出せる
p Loggable.log('Hello.')