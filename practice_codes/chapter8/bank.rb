require './deep_freezable'

class Bank
  extend DeepFreezable

  COUNTRISE = deep_freeze({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end