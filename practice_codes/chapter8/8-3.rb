module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# moduleを使った名前空間で同じクラス名の衝突を避けれる。
Baseball::Second.new('Alice', 13)
Clock::Second.new(13)