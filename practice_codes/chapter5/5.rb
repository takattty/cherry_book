currencies = { 'ja' => 'yen', 'us' => 'dollar' }
currencies['italy'] = 'euro'
p currencies['ja']

currencies.each do |key, value|
  p "#{key}: #{value}"
end

currencies.each do |key_value|
  p key_value # Array
end

p currencies.size

##### Symbol
currencies1 = { :ja => 'yen', :us => 'dollar', :italy => 'euro' }
currencies2 = { ja: 'yen', us: 'dollar', italy: 'euro' }

def buy_burger(menu, drink: true, poteto: true)

end

buy_burger('cheese', drink: true, poteto: true)
buy_burger('cheese', drink: false, poteto: true)

p currencies2.keys
p currencies2.values

hey = { korea: 'won', **currencies2}
p hey # このpのメソッドないでは展開出来ない


array1 = [[:ja, "yen"], [:us, "dollar"], [:india, "rupee"]]
p array1.to_h
p array1.to_s

array2 = {:ja=>"yen", :us=>"dollar", :india=>"rupee"}
p array2.to_a
p array2.to_s


# イミュータブルなオブジェクトなので初期化でブロックを使い、破壊的な変更の意図しないバグを防ぐ
hash = Hash.new { 'hey' }
p hash["a"] # => "hey"
p hash # => {}

# hashには何も入ってないんだ？？？あ、空のままって書かれてるわ。

p %s!ruby is fun! # => :"ruby is fun"
p %s(ruby is fun!) # => :"ruby is fun!"

string = "hey"
p string.to_sym # => :hey

# respond_to? はオブジェクトに対して文字列かシンボルで指定した名前のメソッドを呼び出せるかどうかを調べる
p 'hey'.respond_to?('include?')
p 'hey'.respond_to?(:include?)


# 自己代入
limit = nil
limit ||= 10
p limit

limit = 20
limit ||= 10
p limit