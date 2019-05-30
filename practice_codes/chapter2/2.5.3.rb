#条件分岐のif文。条件が複数ある場合はelse if や elseifではなく、elsifである。また不要なら省略可能。

#if A
    #Aが真の場合の処理
#elsif B
    #Bが真の場合の処理
#elsif C
    #Cが真の場合の処理
#else
    #それ以外の処理
#end

#if A
    #Aが真の場合の処理
#end

n = 15
if n > 15
    puts "１５ではありません"
elsif n == 15
    puts "15です"
else n < 15
    puts "15ではありません"
end
#警告が出てる。
#warning: found `= literal' in conditional, should be ==
#あ、おけ。=が一個足りなかった。

#if文が戻り値を返すという性質を持っている。
country = 'italy'
greeting =
    if country == 'japan'
        'こんにちは'
    elsif country == 'us'
        'Hello'
    elsif country == 'italy'
        'Ciao'
    else
        '???'
    end

puts greeting

#Rubyではif文は修飾子として文の後ろに置く事が出来る。
#通常
point = 7
day = 1
if day == 1
    point *= 5
end
puts point

#が

poit = 7
day = 1
point += 5 if day == 1
puts point