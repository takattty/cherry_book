#find/detectメソッドはブロックの戻り値が真になった最初の要素を返す。
num = [1, 2, 3]
ev_num = num.find{ |n| n.even? }
puts ev_num