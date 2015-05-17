class Item
  def interact(player)
    puts "You pick up #{self}"
  end

  def to_s
    "a shiny awesome #{@name}"
  end
end
