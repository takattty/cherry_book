#メソッド定義での引数について
#引数がない場合は、()をつけないのが主流。
def greetig
    'こんにちは'
end

#つけてもいいが、省略されている場合が多い。
def greeting()
    'こんにちは'
end

#引数がある場合でも、()は省略出来る。ただし引数がある場合は()をつける事が多い。
def greeting country
    if country == 'japan'
        'こんにちは'
    else
        'Hello'
    end
end

