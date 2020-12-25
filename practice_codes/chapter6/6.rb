# 正規表現

regex = /\d{3}-\d{4}/
p regex.class
# 文字列と正規表現の比較
p '123-4567' =~ regex


# キャプチャという機能
# （）を使う事で特定の文字列を抜き出してくれる
birthday = "私の誕生日は1977年7月17日です"
result = /(\d+)年(\d+)月(\d+)日/.match(birthday)
p result # => #<MatchData "1977年7月17日" 1:"1977" 2:"7" 3:"17">
p result[0]
p result[1]
p result[2]
p result[3]
# "1977年7月17日"
# "1977"
# "7"
# "17"


# キャプチャに名前を付ける＝メタ文字を使用する
result2 = /(?<year>\d+)年(?<mouth>\d+)月(?<day>\d+)日/.match(birthday)
p result2 # => #<MatchData "1977年7月17日" year:"1977" mouth:"7" day:"17">
# つまりシンボルや文字列で指定する事ができる！＝順番で指定しなくてもいい！便利！


# もう一つの機能として、正規表現リテラルを左辺に文字列を右辺に置いて=~演算子を使うとキャプチャの名前をそのままローカル変数に使える
if /(?<year>\d+)年(?<mouth>\d+)月(?<day>\d+)日/ =~ birthday
  p "#{year}/#{mouth}/#{day}" # => "1977/7/17"
end
#　超便利じゃん。でも左辺と右辺逆だと使えません！


# Stringクラスにある正規表現と組み合わせると便利になるメソッド
# scan String to Array         マッチした文字列を配列に入れて返す。
# split String to Array        マッチした文字列を区切り文字にして分解し、配列を返す。どこで区切るかを決めて全要素を配列に入れるイメージ。
# gsub, gsub! String to String マッチした文字列を第二引数の文字列で置き換える。

# \w = [A-Za-za0-9_] 同値。