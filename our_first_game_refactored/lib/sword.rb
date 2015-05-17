require_relative "item.rb"

class Sword < Item
  def initialize
    @name = "sword"
  end

  def perform_item_effect(player)
    player.attack_power += 1
  end
end
