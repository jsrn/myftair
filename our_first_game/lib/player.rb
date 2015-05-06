class Player
  attr_accessor :hit_points, :attack_power

  def initialize
    @hit_points   = 100
    @attack_power = 1
  end

  def alive?
    @hit_points > 0
  end
end
