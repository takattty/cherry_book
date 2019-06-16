#select/find_allメソッドは各要素に対してブロックを評価し、その戻り値が真の要素を集めた配列を返すメソッド。
num = [1, 2, 3, 4, 5, 6]
ev_num = num.select{ |n| n.even? }
puts ev_num

#rejectはその逆。ブロックの戻り値が偽である要素を集めるメソッド
num = [1, 2, 3, 4, 5, 6]
no_num = num.reject{ |n| n % 3 == 0}
puts no_num