#もう一つのブロック記法 do .. endを使う代わりに、{}で囲む。
num = [1, 2, 3, 4]
sum = 0
num.each{ |n| sum += n}
puts sum

#両方もあり。{}を使ってブロックの内部を改行させる。
nums = [1, 2, 3, 4]
sums = 0
nums.each { |n|
    sums += n
}
puts sums

# ・改行を含む長いブロックを描く場合は、do .. end
# ・１行でコンパクトにかけるときは{}

