#Rubyには変数の値を増減させる++や--のような演算子ではなく、+=や-=が用意されている。
n = 1
puts n += 1
puts n -= 1

n = 2
puts n *= 2
puts n /= 2
puts n ** 2

#数値と文字列を演算子では計算できないのでちゃんと変換する！
puts 1 + '10'.to_i
puts 1 + '10.5'.to_f

#to_iメソッドは、文字列を10進数の表現とみなし整数（数値）に変換。引数には他の進数を入れる事が出来る。
#しかし、負の値を入れると例外ArgumentErrorが発生。

s = "cat"
puts s.to_i #=>これは0が返ってくる。10進数とみなせなかったから。探せなかったから？
s2 = "cat2"
puts s2.to_i #=>return 0
s3 = "cat 3"
puts s3.to_i #=>return 0
s4 = "4 cat"
puts s4.to_i #=>return 4
#つまり先頭からみて、10進数とみなせなかった場合は後ろに10真数があっても0が返ってくる。ちょっと使いずらくない？

#to_jメソッドは、文字列を浮動小数点数の表現としてFloatオブジェクトに変換。

s = "-1.2e-3"
puts s.to_f

#文字列に数値を直接連結は不可能。to_sメソッドを使って数値を文字列に変換する必要がある。

num = 3

#puts 'Number is' + num#=>エラーで怒られます。
#Traceback (most recent call last):
#    1: from 2.4.3.rb:36:in `<main>'
#2.4.3.rb:36:in `+': no implicit conversion of Integer into String (TypeError)

puts 'Number is' + num.to_s

puts "Number is #{num}"