#inject/reduceメソッド。は畳み込み演算を行うメソッド。

num = [1, 2, 3, 4]
sum = 0
num.each { |n| sum += n }
puts sum

#が

num = [1, 2, 3, 4]
sums = num.inject(0) { |result, n| result + n } 
puts sums

ok = ['ta', 'ka', 'ty'].inject('Mynaneis') { |result, n| result + n}
puts ok