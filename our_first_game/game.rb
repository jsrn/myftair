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
      print "What's the plan, Stan? "
      action = gets.chomp.to_sym
      next unless allowed_actions.include? action
      puts "Valid"
      # take action
    end
  end

  def allowed_actions
    [:north, :east, :south, :west]
  end
end

Game.new
