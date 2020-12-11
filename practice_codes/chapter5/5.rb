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