#ブロック引数とブロック内の変数
#ブロック引数を使わない場合は、ブロック引数自体を省略できます。
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do 
    sum += 1
end
puts sum

#これはブロック内に複数行の処理を書いたもの。
number = [1, 2, 3, 4]
sume = 0
numbers.each do |n|
    sum_value = n.even? ? n * 10 : 0
    sum += sum_value
end
puts sum

#変数のスコープ（有効範囲）はブロックの内部だけ。外部ではエラーになる。
#だがsumeのように外部で定義したローカル変数はブロックの内部でも参照出来る！
# number = [1, 2, 3, 4]
# sume = 0
# numbers.each do |n|
#     sum_value = n.even? ? n * 10 : 0
#     sum += sum_value
# end
# puts sum_value

#ブロック引数の名前をブロックの外にある変数の名前と同じにすると、ブロック内ではブロック引数の値が優先されて参照される。
# シャドーイング＝名前の重複により、他の変数やメソッドが参照できなくなる事。