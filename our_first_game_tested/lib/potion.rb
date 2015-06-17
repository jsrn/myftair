require_relative "item.rb"

class Potion < Item
  def initialize
    @name = "potion"
  end

  def perform_item_effect(player)
    player.heal(10)
  end
end
