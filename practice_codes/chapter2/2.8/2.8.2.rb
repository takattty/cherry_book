# %記法で文字列を作る。
# 文字列は、%記法でも作れます。

puts %q!He said, Don't speak!
puts %Q!He said, Don't speak!#改行文字や式展開が使える。
puts %!He said, Don't speak!
puts %?He said, Don't speak?
puts %{He said, Don't speak}
#様々な文字列作成法