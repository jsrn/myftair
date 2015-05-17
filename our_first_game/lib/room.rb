class Room
  attr_accessor :size, :content

  def initialize
    @content   = get_content
    @size      = get_size
    @adjective = get_adjective
  end

  def description
    "You are in a #{@size} room. It is #{@adjective}."
  end

  def interact(player)
    @content.interact(player)
    @content = nil
  end

  private
  def get_content
    [Monster.new, Item.new].sample
  end

  def get_size
    ["small", "medium", "large"].sample
  end

  def get_adjective
    ["pretty", "ugly", "hideous"].sample
  end
end
