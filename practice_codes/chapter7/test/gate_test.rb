require 'minitest/autorun'
require './7.rb'

class GateTest < Minitest::Test
  def test_gate
    assert Gate.new
  end
end