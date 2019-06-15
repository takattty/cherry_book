#要素の変更＋追加＋削除
a = [1, 2, 3]
a[1] = 20
puts a

#元の大きさよりも大きい添え字を指定すると、間がnilで埋められる。
a[4] = 50
puts a

#<<を使うと、配列の最後に要素を追加
b = []
b << 1
b << 2
b << 3
puts b

#配列ないの特定の位置にある要素を削除したい場合は、delete_atメソッドを使用。
c = [1, 2, 3]
c.delete_at(1)
puts c
c.delete_at(100)
puts c
#このputsで出力したら、配列で出てこない。どうしたらいいんだろう。

#多重代入
a, b = 1, 2
#とかだとa=1 b=2になる。これに配列を利用出来る。

a, b = [1, 2]#同じ結果。

#Rubyには割り算の商と余りを配列として返すdivmodというメソッドがあります。
puts (14.divmod(3))

quotient, remainder = 14.divmod(3)
puts ("商=#{quotient}, 余り=#{remainder}")
#このように多重代入で別々の変数に返り値を返す。