# for i in 1..30
#     if i % 15 == 0
#         puts ('FizzBuzz')
#     elsif i % 3 == 0
#         puts ('fizz')
#     elsif i % 5 == 0
#         puts ('Buzz')        
#     else
#         puts (i.to_s)
#     end
# end
#この処理の書き方だと、テストから呼び出せないから書き方を変えてみる。

def fizz_buzz(i)
    if i % 15 == 0
        'FizzBuzz'
    elsif i % 3 == 0
        'Fizz'
    elsif i % 5 == 0
        'Buzz'
    else
        i.to_s
    end
end

require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
    def test_fizz_buzz
        assert_equal 'FizzBuzz', fizz_buzz(15)
        assert_equal 'Fizz', fizz_buzz(3)
        assert_equal 'Buzz', fizz_buzz(5)
        assert_equal '1', fizz_buzz(1)
    end
end
