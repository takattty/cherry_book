# About Array
a = [1, 2, 3, 4, 5]
p a[1, 3] # index, length
p a.values_at(0, 2, 4) # index
p a.first
p a.last

# Change Value
i = [1, 2, 3]
p i[0] = 4
p i << 5
p i.push(6)
p i.delete(5)
p i

u = [1, 2]
e = [1, 3, 4, 6, 8]
p u.concat(e)
p u, e
p u + e
p u, e

o, *k = 100, 200, 300
p o, k # K=Array

p %w(apple melon orange) # => ["apple", "melon", "orange"] クォーテーションやカンマを入れないで済むので短縮。

p 'ruby'.chars

ka = Array.new(5, 'hey') # 引数での呼び出しなので、全て同じ値でオブジェクトとして存在している。
ka1 = ka[0]
ka1.upcase!
p ka

ki = Array.new(5) { 'hi' } # ブロックが呼ばれる度にしか生成しないから、それぞれが違うオブジェクトとして存在。
ki1 = ki[0]
ki1.upcase!
p ki