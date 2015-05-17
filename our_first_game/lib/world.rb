class World
  WORLD_WIDTH  = 10
  WORLD_HEIGHT = 10

  def initialize
    @rooms = Array.new(WORLD_HEIGHT, Array.new(WORLD_WIDTH))
  end

  def move_entity_north(entity)
    if entity.y_coord > 0
      entity.y_coord -= 1
    end
  end

  def move_entity_south(entity)
    if entity.y_coord < WORLD_HEIGHT
      entity.y_coord += 1
    end
  end

  def move_entity_east(entity)
    if entity.x_coord < WORLD_WIDTH
      entity.x_coord += 1
    end
  end

  def move_entity_west(entity)
    if entity.x_coord > 0
      entity.x_coord -= 1
    end
  end

  def get_room_of(entity)
    @rooms[entity.x_coord][entity.y_coord] ||= Room.new
  end
end
