class World
  def initialize
    @rooms = Array.new(10, Array.new(10, Room.new))
  end
end
