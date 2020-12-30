# self keyword

# 値をセットしたい場合は、attr_accessorで定義しているセッターメソッド（今回だとname=）を呼び出す時に必ずselfを書いてあげる。
# 書いてあげないとローカル変数と同じ挙動となり、メソッド外の値を変更する処理にならないから。

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # これがnameメソッドの値に代入する処理ではなく、ローカル変数への代入の処理になっている為。
    # name = "Bob"
    # なので、セッターメソッドの呼び出しには必ずselfを付けてあげないといけない。
    self.name = "Bob"
  end

  def rename_to_carol
    self.name = "Carol"
  end

  def rename_to_dave
    @name = "Dave"
  end
end

user = User.new("Alice")

user.rename_to_bob
p user.name

user.rename_to_carol
p user.name

user.rename_to_dave
p user.name