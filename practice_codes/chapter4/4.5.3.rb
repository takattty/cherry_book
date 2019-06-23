#case分を使い。
#範囲オブジェクトはcase分と組み合わせることもできる！

def charge(age)
    case age
    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else 
        1000
    end
end

puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)