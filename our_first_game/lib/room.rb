class Room
  def description
    "You are in a #{size} room. It is #{adjective}."
  end

  def content
    [Monster.new, Item.new].sample
  end

  private
  def size
    ["small", "medium", "large"].sample
  end

  def adjective
    ["pretty", "ugly", "hideous"].sample
  end
end
