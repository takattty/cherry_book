#！で終わるメソッドの使い方。
#Stringクラスには、upcaseメソットとupcase!メソッドが存在。

a = 'apple'

puts (a.upcase)
puts (a)

puts (a.upcase!) #呼び出したオブジェクトの元の状態を変更してしまうメソッドの事を「破壊的メソッド」と呼ぶ。変数名には使えない。
puts (a)