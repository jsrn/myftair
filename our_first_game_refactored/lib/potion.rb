require_relative "item.rb"

class Potion < Item
  def initialize
    @name = "potion"
  end

  def interact(player)
    super(player)
    player.heal(10)
  end
end
