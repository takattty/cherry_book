# メソッドの公開レベル

# private = クラス外から呼び出せず、クラスの内部のみで使えるメソッド。サブクラスからも呼び出せる
#         = レシーバを指定して呼び出すことが出来ないメソッド。user.helloだとhelloがprivateならレシーバを指定出来ない。これが理由。
#         = インスタンスメソッドのみprivateメソッドになる。

class User
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def hello
    # privateメソッドを呼び出している為、selfは付けない（selfがあるとレシーバがあると認識されてしまうから）
    "Hello, I am #{name}."
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  # この子実はメソッドで引数を渡せる。メソッド名を引数で渡すとそのメソッドがprivateになるのはその為。
  private

  def name
    "Alice"
  end

  # privateより下に書かれたメソッドだが、クラスメソッドはprivateにならない
  def self.hi
    "Hi!"
  end

  protected

  def weight
    @weight
  end

  # クラスメソッドをprivateにしたいなら、 class << selfでメソッドを定義するかクラスメソッド定義後にprivate_class_methodで公開レベルを変更する必要がある。
end

class Man < User
  def to_s
    "Nami is #{name}"
  end
end

# 継承でもprivateメソッドを使える。オーバーライドも使える
# man = Man.new
# p man.to_s

# クラスメソッドで参照可能。
p User.hi


alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
p alice.heavier_than?(bob)
p bob.heavier_than?(alice)
# p alice.weight # => protected method `weight' called for #<User:0x00007f918686ba18 @name="Alice", @weight=50> (NoMethodError)