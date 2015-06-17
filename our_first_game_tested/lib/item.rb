class Item
  def interact(player)
    puts "You pick up #{self}"

    perform_item_effect(player)
  end

  def to_s
    "a shiny awesome #{@name}"
  end
end
