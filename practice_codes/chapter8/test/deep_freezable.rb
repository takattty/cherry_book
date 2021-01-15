require 'minitest/autorun'
require './bank'
require './team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRISE
    assert Team::COUNTRISE.frozen?
    assert Team::COUNTRISE.all? { |country| country.frozen?}
  end
end