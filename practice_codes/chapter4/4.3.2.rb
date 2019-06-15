#Rubyでの繰り返し処理。
#for文はあるがあんまし使わない。
#Rubyではforのような構文で繰り返し処理をさせるのではなく、配列自身に対して「繰り返せ」と命令をする、＝each文

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end
puts sum