class Item
  TYPES = [:potion, :sword]

  attr_accessor :type

  def initialize
    @type = TYPES.sample
  end

  def interact(player)
  end

  def to_s
    "a shiny #{@type.to_s}"
  end
end
