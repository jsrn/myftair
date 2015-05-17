class Item
  TYPES = [:potion, :sword]

  attr_accessor :type

  def initialize
    @type = TYPES.sample
  end

  def interact(player)
    case @type
    when :potion
      puts "You pick up #{self}."
      player.hit_points += 10
      player.hit_points = 100 if player.hit_points > 100
    when :sword
      puts "You pick up #{self}."
      player.attack_power += 1
    end
  end

  def to_s
    "a shiny awesome #{@type.to_s}"
  end
end
