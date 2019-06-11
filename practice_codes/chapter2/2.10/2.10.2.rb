#優先順位が低いand or not
# 高い
# !
# &&
# ||
# not
# and or
# 低い

#優先順位の時には、()を使うかこの優先順位を考えてから書かないといけない。
#なのでandやorを使うには、制御フローで使うのが賢明。
#user.valid? && send_mail_to user  #引数の（）をつけ忘れ。これだとエラーが帰ってくる
#(user.valid? && send_mail_to) userとなるから

#しかしandを使うとエラーにならない。
#user.valid? and send_mail_to user
#(user.valid?) && (send_mail_to user)と解釈するから。
#メソッドの引数かっこは、省略できる。2.2.2.rbを参照。
#論理演算子の特性を理解しないと、&&の挙動を理解できないかも。まあ普通にメソッドの引数に（）をつけたら解決する問題だから付けようね。

def greeting(country)
    country or return puts 'countryを入力して下さい'

    if country == 'japan'
        puts 'こんにちわ'
    else
        puts'hello'  
    end
end

greeting(false)
greeting('US')
greeting('japan')