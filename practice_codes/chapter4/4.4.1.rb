#ブロックを使う配列のメソッド。
#map/collectの使い方。

num = [1, 2, 3, 4]
new_num = []
num.each { |n| new_num << n * 10}
puts new_num
#各要素を10倍する処理。新しい配列を準備してそこに入れる。
#mapメソッドを使うとブロックの戻り値が配列の要素となる新しい配列が作成されるため、新しい空の配列を準備しなくてもいい。
#collectはエイリアスメソッド

nums = [1, 2, 3, 4]
new_nums = nums.map { |n| n * 10 }
puts new_nums