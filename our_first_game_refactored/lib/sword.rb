require_relative "item.rb"

class Sword < Item
  def initialize
    @name = "sword"
  end

  def interact(player)
    super(player)
    player.attack_power += 1
  end
end
