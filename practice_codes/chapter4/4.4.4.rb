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
#まずはinjectの引数が初回のみの値。次からは、nに各要素が入っていく。それがresultの演算を行なって結果は戻り値としてresultに入る。
#これを繰り返して最後まで計算。最後はrejectメソッドの返り血となる。