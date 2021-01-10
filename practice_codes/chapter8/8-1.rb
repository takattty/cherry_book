# モジュールの定義
# モジュールからはインスタンスを生成出来ない
# 他のモジュールやクラスから継承が出来ない
module Greeter
  def hello
    'hello'
  end
end

p greeter = Greeter.new
# undefined method `new' for Greeter:Module

module AwesomeGreeter < Greeter

end
# syntax error, unexpected '<'
# module AwesomeGreeter < Greeter