require_relative "mortal.rb"

class Monster
  include Mortal

  attr_accessor :hit_points, :attack_power

  def initialize
    initialize_stats(BASE_STATS)
  end

  def to_s
    "a horrible monster! garurururu"
  end

  def interact(player)
    while player.alive?
      puts "You hit the monster for #{player.attack_power} points."
      hurt(player.attack_power)
      break unless alive?
      player.hurt(@attack_power)
      puts "The monster hits you for #{@attack_power} points."
    end
  end
end
