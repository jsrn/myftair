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

  def take_action(action)
    case action
    when :north
      move_player_north # not yet implemented
    when :east
      move_player_east  # not yet implemented
    when :south
      move_player_south # not yet implemented
    when :west
      move_player_west  # not yet implemented
    end
  end
end

Game.new
