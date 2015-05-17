class World
  def initialize
    @rooms = Array.new(10, Array.new(10, Room.new))
  end

  def move_entity_north(entity)
    if entity.y_coord > 0
      entity.y_coord -= 1
    end
  end

  def move_entity_south(entity)
    if entity.y_coord < 10
      entity.y_coord += 1
    end
  end

  def move_entity_east(entity)
    if entity.x_coord < 10
      entity.x_coord += 1
    end
  end

  def move_entity_west(entity)
    if entity.x_coord > 0
      entity.x_coord -= 1
    end
  end

  def get_room_of(entity)
    @rooms[entity.x_coord][entity.y_coord]
  end
end
