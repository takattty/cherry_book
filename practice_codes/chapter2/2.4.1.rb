10
1.5
-3
-4.5

#数値に_を含める事ができるが、無視される。大きな数の区切りとして便利。
puts 1_000_000_000

n = 1
puts -n

#整数同士の割り算は整数になるので注意。必要な場合は、どちらかに小数点を加える。
puts 1 / 2
puts 1.0 / 2
puts 1 / 2.0

n = 1
puts n.to_f
puts n.to_f / 2

#べき乗
puts 2 ** 3

puts 1 < 2
puts 1 >= 2
puts 1 == 2
puts 1 != 2
puts 1 > 3
puts 1 >= 2