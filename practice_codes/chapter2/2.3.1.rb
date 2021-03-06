'これ文字列！'
"これも文字列！"

#同じ文字列だが、挙動が違う！　改行文字（/n）を埋め込みたいときは、ダブルの方で囲む。

#ダブルで囲むと/nが使える
a = "こんにちは\nさようなら"
puts a

b = 'こんにちは\nさようなら'
puts b

#（\r）キャリッジリターンや（\t）タブ文字があります。ダブルを使うと式展開が使える！式展開＝#{}の中に変数や式を書ける。
name = 'Alice'
puts "Hello, #{name}!"

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です"

#シングルではならない
puts 'Hello, #{name}'

#式展開があった方が読み書きしやすい！

#ダブルを使う文字列で、改行文字や式展開の機能を打ち消したいときは手前にバックスラッシュを加える。
puts "こんにちは\\nこんばんわ"

#同様にシングルの中にシングルを、ダブルの中にダブルを含めたい場合も手前に\を加える
puts 'He said, "Don\'t speak."'
puts "He said, \"Don't speak.\""