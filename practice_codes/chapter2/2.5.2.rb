#条件１も条件２も真であれば真、それ以外は偽
#条件１　＆＆　条件２(かつ)
t1 = true
t2 = true
f1 = false
puts t1 && t2
puts t1 && f1

#条件１か条件２のいずれかが真であれば真、両方偽であれば偽
#条件１　|| 条件２（または）
t1 = true
f2 = true
f1 = false
f2 = false
puts t1 || f1
puts f1 || f2
puts t1 || t2

#&& と ||を組み合わせる事もできます。
#だが、&& > ||優先順位がこのような形になっているので注意が必要。（）をつけるとわかりやすい。
t1 = true
f2 = true
f1 = false
f2 = false
puts t1 && t2 || f1 && f2
puts (t1 && t2) || (f1 && f2)

#よって、優先順位を変えたい場合は()を使えばいい。

#!演算子を使うと、真偽値を反転させる事が出来る。真＝＞偽、偽＝＞真（）とも組み合わせられる。