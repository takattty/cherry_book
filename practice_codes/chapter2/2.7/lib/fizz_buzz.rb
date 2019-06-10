#puts 'Hello world!'

#・３で割り入れる数値は、Fizz
#・5で割り切れるすちは、Buzz
#・15で割り切れる数値は、FizzBuzz
#・それ以外はその数値を文字列で返す。
#・今回は、30までの数値でやってみる。


#x = 3
#if x == 3
    #puts ('Fizz')
#elsif x != 3
    #puts ('Not Fizz')
#end

#y = 15
#if y == 15
    #puts ('FizzBuzz')
#elsif y != 3
    #puts ('Not FizzBuzz')
#end

#For文を使って変数に30までの数値を入れたい
#for i in 0..30
     #puts (i)
#end
#ここクォーテーションで囲むと数値じゃなくてiという文字列が帰ってきた。
#putsで文字列と指定してしまうと変数には数値が入っていて返すものがないので、文字列のiが帰ってきたのかな？

#for i in 1..30
#    if i % 3 == 0
#        puts ('Fizz')
#    elsif i % 5 == 0
#        puts ('Buzz')
#    elsif i % 15 == 0
#        puts ('FizzBuzz')        
#    else
#        puts (i)
#    end
#end
#15の値がFizzになってる。if文では先に当てはまる処理で進めるから、先に15を先にしてダメだったら3や5の処理に進めないといけないのか。
#なので15から先に書いてみる

# for i in 1..30
#     if i % 15 == 0
#         puts ('FizzBuzz')
#     elsif i % 3 == 0
#         puts ('fizz')
#     elsif i % 5 == 0
#         puts ('Buzz')        
#     else
#         puts (i)
#     end
# end
#ここではFizzBuzz以外の数値を文字列にしないといけないけど、出来てないのでその修正。メソッド使うか？

for i in 1..30
    if i % 15 == 0
        puts ('FizzBuzz')
    elsif i % 3 == 0
        puts ('fizz')
    elsif i % 5 == 0
        puts ('Buzz')        
    else
        puts (i.to_s)
    end
end

puts (i.to_s.class) #=>stringって出たからちゃんとこの処理で文字列になってる！
