#文字列の比較
puts 'ruby' == 'ruby'
puts 'ruby' == 'Ruby'
puts 'ruby' != 'perl'
puts 'ruby' != 'ruby'

#大小関係の比較。文字コードが大小比較の基準。
puts 'a' < 'A'
puts 'a' > 'A'
puts 'takatty' < 'taka' #=>false
puts 'takatty' > 'taka' #=>true