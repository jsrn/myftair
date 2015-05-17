class Monster
  attr_accessor :hit_points, :attack_power

  def initialize
    @hit_points   = 10
    @attack_power = 1
  end

  def to_s
    "a horrible monster! garurururu"
  end
end
