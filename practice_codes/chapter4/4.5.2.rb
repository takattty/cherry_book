#n以上m以下、n以上m未満の判定。範囲オブジェクトで判定。

def liquid?(temperature)
    0 <= temperature && temperature < 100 
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
puts liquid?(101)

def liquid?(temperature)
    (0...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)