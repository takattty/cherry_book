require './deep_freezable'

class Team
  extend DeepFreezable

  COUNTRISE = deep_freeze(['Japan', 'US', 'India'])
end