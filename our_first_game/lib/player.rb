class Player
  attr_accessor :hit_points, :attack_power
  attr_accessor :x_coord, :y_coord

  def initialize
    @hit_points        = 100
    @attack_power      = 1
    @x_coord, @y_coord = 0, 0
  end

  def alive?
    @hit_points > 0
  end

  def print_status
    puts "*" * 80
    puts "HP: #{@hit_points}/100"
    puts "AP: #{@attack_power}"
    puts "*" * 80
  end
end
