#整数値は次の演算子を使ってビット演算ができます

puts ((~0b1010).to_s(2))
puts ((0b1010 & 0b1010).to_s(2))
puts ((0b1010 | 0b1010).to_s(2))
puts ((0b1010 ^ 0b1010).to_s(2))
puts ((0b1010 >> 1).to_s(2))
puts ((0b1010 << 1).to_s(2))