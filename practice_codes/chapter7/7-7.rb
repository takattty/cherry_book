# 等値を判断するメソッドや演算子を理解

# equal?
# object_idが等しいかを調べる。
a = 'abc'
b = 'abc'

p a.equal?(b)

c = a
p a.equal?(c)

# ==
p 1 == 1.0


# eql?
# ハッシュのキーとして２つのオブジェクトが等しいかを調べる。
h = { 1 => 'Integer', 1.0 => 'Float' }
p 1.eql?(1.0)

a = 'japan'
b = 'japan'

p a.eql?(b)
p a.hash
p b.hash

c = 1
d = 1.0
p c.eql?(d)
p c.hash
p d.hash