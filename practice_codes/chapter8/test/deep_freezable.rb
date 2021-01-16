require 'minitest/autorun'
require './bank'
require './team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRISE
    assert Team::COUNTRISE.frozen?
    assert Team::COUNTRISE.all? { |country| country.frozen? }
  end

  def test_deep_freeze_to_hash
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
      Bank::CURRENCIES
    )
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end