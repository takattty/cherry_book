require 'minitest/autorun'

# class SampleTest < Minitest::Test
#     def test_sample
#         assert_equal 'RUBY', 'ruby'.upcase
#     end
# end

#クラスの名前はキャメルケースで、ファイル名はスネークケースで命名。
#assert_equal 期待する結果, テスト対象　の形のメソッド。

# class SampleTest < Minitest::Test
#     def test_sample
#         assert_equal 'RUBY', 'ruby'.capitalize
#     end
# end


class SampleTest < Minitest::Test
    def test_sample
        assert_equal 'RUBY', nil.upcase
    end
end