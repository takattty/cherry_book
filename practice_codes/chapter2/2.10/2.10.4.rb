#複数の条件を指定する場合には、elsifを重ねるよりcase文で書いた方がスッキリする。

# case 対象のオブジェクトや式
# when 値
#     処理
# when 値
#     処理    
# else
#     処理
# end

country = 'Itary'

case country
when 'japan'
    puts ('こんにちは')
when 'Itary'
    puts('ciao')
else
    puts('???')
end
#結果を変数に代入する事も可能。