#引数の過不足があるとエラーが起こる。
#Rubyではデフォルトで引数を設定できる、

def greeting (country = 'japan')
    if country == 'japan'
        puts ('こんにちは')
    else
        puts ('Hello')
    end
end

greeting
greeting('us')

#デフォルトの値は、ありとなしを混合して使えるし、動的な値や他のメソッドの戻り値を指定したり出来る、