Dir["lib/**.*"].each { |file| require_relative file }

class Game
  def initialize
    create_world
    create_player

    start_game
  end

  private
  def create_world
    @world = World.new
  end

  def create_player
    @player = Player.new
  end

  def start_game
    while @player.alive?
      # take action
    end
  end
end

Game.new
