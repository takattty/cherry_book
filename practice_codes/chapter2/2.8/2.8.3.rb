#文字列を途中で改行。

puts "Line 1,
Line 2" #シングルでも可能。

#長い文字列を作成する際に使用する、ヒアドキュメント（行指向文字列リテラル）
a = <<TEXT
これはヒアドキュメントですね。
複数行の渡る長い文字列を作成するのに便利です。
TEXT
puts a #TEXTのところは、識別子ですね。

def some
    <<-TEXT
    これはヒアドキュメントです。
    <<-を使うと最後の識別子をインデントさせる事が出来ます。
    TEXT
end
puts some#インデント＝空白ね    


a = 'Ruby'
a.prepend(<<TEXT)#このprependメソッドで、渡された文字列を先頭に追加する。
Java
PHP
Javascript
TEXT
puts a

