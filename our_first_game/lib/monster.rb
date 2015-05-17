class Monster
  attr_accessor :hit_points, :attack_power

  MAX_HIT_POINTS = 10

  def initialize
    @hit_points   = MAX_HIT_POINTS
    @attack_power = 1
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def to_s
    "a horrible monster! garurururu"
  end

  def interact(player)
    while player.alive?
      hurt(player.attack_power)
      break unless alive?
      player.hurt(@attack_power)
    end
  end
end
