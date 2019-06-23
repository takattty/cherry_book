#繰り返し処理を使用。

num = (1..4).to_a
sum = 0
num.each{ |n| sum += n}
puts sum

sum1 = 0
(1..4).each{ |n| sum1 += n }
puts sum1

numb = []
(1..10).step(2){ |n| numb << n }
puts numb