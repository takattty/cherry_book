#Rubyでの繰り返し処理。
#for文はあるがあんまし使わない。
#Rubyではforのような構文で繰り返し処理をさせるのではなく、配列自身に対して「繰り返せ」と命令をする、＝each文

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end
puts sum

#Rubyが言語機能として繰り返し処理を実行しているのではなく、配列のeachメソッドが繰り返し処理を実行している。
#eachメソッドの役割は、配列の要素を最初から最後まで順に取り出す事です。その要素をどう処理するかを決めるのがブロックに記述する。
#doからendまでの範囲がブロックの範囲。
#|n|のnはブロック引数＝eachメソッドから渡された配列の要素が入る。順番に。
#eachメソッドを使って、配列自身に動いてもらう。for文では、構文で処理を行う。
#Javaなどで使われるfor構文。

# int numbers[] = {1, 2, 3, 4};
# int sum = 0;
# for (int i = 0; i < numbers.length; i++) {
#     sum += numbers[i];
# };
# System.out.print(sum);
# のように、for構文を使って新しく繰り返し処理を作るが、Rubyでは配列自身に処理をさせる
