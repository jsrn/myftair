class Monster
  attr_accessor :hit_points, :attack_power

  def initialize
    @hit_points   = 10
    @attack_power = 1
  end

  def interact(player)
    while player.alive?
      @hit_points -= player.attack_power
      break unless alive?
      player.hit_points -= @attack_power
    end
  end

  def alive?
    @hit_points > 0
  end

  def to_s
    "a horrible monster! garurururu"
  end
end
