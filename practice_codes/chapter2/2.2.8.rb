s = 'Hello'
n = 123 * 2

#変数を宣言する目的で変数名だけ書くと、エラーになる
x #=>NameError: undefined local variable or method 'x' for main:Object

#変数を宣言するにはなにかしらの値を代入する必要がある。
x = nil

#変数名はスネークケース(=アンダースコア＿で区切る記法）で書く。
special_price = 200

#キャメルケース（＝詰める記法）では書かない。
spwcialPrice = 200

#あまり使われない_で始めるケース
_special_price = 200

#変数名に数字を入れる
special_price2 = 300

#数字から始まるとエラー
2_special_price = 300
#=>SyntaxError: trailinng '_' in number
# 2_special
#   ^


#変数名を漢字にする。（一般的ではない）

#Rubyの場合、変数が特定の肩に制限されることがないので、同じ変数に文字列や数値を自由に代入する事ができるが、それはやらない方がいい。

#ここから先は、特別な理由がない限り避けたほうがいい記法です。
a, b = 1, 2
a #=> 1
b #=> 2

#右辺の数が少ない場合はnilが入る。
c, d = 1
c #=> 1
d #=> nil

#左辺のほうが多い場合、はみ出した値が切り捨て
e, f = 1, 2, 3
e #=> 1
f #=> 2

a = b = 100
a #=> 100
b #=> 100
