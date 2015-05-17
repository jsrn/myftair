module Mortal
  BASE_STATS = {
    max_hit_points: 10,
    attack_power:   1
  }

  def initialize_stats(stats)
    @stats = stats

    @hit_points   = stats[:max_hit_points]
    @attack_power = stats[:attack_power]
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def heal(amount)
    @hit_points += amount
    @hit_points = [@hit_points, @stats[:max_hit_points]].min
  end
end
