Dir["lib/**.*"].each { |file| require_relative file }

class Game
  def initialize
    @world = World.new
    @player = Player.new

    start_game
  end

  private
  def start_game
    while @player.alive?
      @current_room = @world.get_room_of(@player)

      print_status

      action = take_player_input
      next unless allowed_actions.include? action

      take_action(action)
    end
  end

  def take_player_input
    print "What's the plan, Stan? "
    gets.chomp.to_sym
  end

  def allowed_actions
    [:north, :east, :south, :west]
  end

  def print_status
    puts "You are at map coordinates [#{@player.x_coord}, #{@player.y_coord}]"

    puts @current_room.description
    puts "You see #{@current_room.content}"
  end

  def take_action(action)
    case action
    when :look
      print_status
    when :north
      @world.move_entity_north(@player)
    when :east
      @world.move_entity_east(@player)
    when :south
      @world.move_entity_south(@player)
    when :west
      @world.move_entity_west(@player)
    end
  end
end

Game.new
