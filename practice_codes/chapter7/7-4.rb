# メソッドの公開レベル

# private = クラス外から呼び出せず、クラスの内部のみで使えるメソッド。サブクラスからも呼び出せる
#         = レシーバを指定して呼び出すことが出来ないメソッド。user.helloだとhelloがprivateならレシーバを指定出来ない。これが理由。

class User
  def hello
    # privateメソッドを呼び出している為、selfは付けない（selfがあるとレシーバがあると認識されてしまうから）
    "Hello, I am #{name}."
  end

  private

  def name
    "Alice"
  end
end

class Man < User
  def to_s
    "Nami is #{name}"
  end
end

# 継承でもprivateメソッドを使える。オーバーライドも使える
man = Man.new
p man.to_s