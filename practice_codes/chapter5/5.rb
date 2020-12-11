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