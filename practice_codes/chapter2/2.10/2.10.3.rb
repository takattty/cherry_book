#unless文＝ifと反対の意味を持つ文。
#条件式が技になった場合だけ処理を行う。

status = 'error'
if status != 'ok'
    puts ('異常です')
end

status = 'error'
unless status == 'ok'
    puts('異常です')    
else #elsifみたいな働きの処理はない！
    puts ('正常です')
end

