#sprintfメソッド＝指定されたフォーマットの文字列を作成する事が出来ます。
#以下は少数第３今で数字を表示sる文字列を作成する例

puts sprintf('%0.3f', 1.2) #=>1.200

#少し変わった形だが、”フォーマット文字列　％　表示したいオブジェクト”の形式でも大丈夫
puts ('%0.3f' % 1.2) 