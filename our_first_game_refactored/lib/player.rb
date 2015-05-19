require_relative "mortal.rb"

class Player
  include Combatant

  attr_accessor :hit_points, :attack_power
  attr_accessor :x_coord, :y_coord

  MAX_HIT_POINTS = 100

  def initialize
    initialize_stats(BASE_STATS.merge ({
      max_hit_points: MAX_HIT_POINTS
    }))

    @x_coord, @y_coord = 0, 0
  end

  def print_status
    puts "*" * 80
    puts "HP: #{@hit_points}/#{MAX_HIT_POINTS}"
    puts "AP: #{@attack_power}"
    puts "*" * 80
  end
end
