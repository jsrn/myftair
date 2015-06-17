require_relative "../lib/sword.rb"

class PlayerDouble
  attr_accessor :attack_power

  def initialize
    @attack_power = 0
  end
end

describe Sword do
  it "increases the attack power of the object passed to it" do
    player = PlayerDouble.new
    expect{Sword.new.perform_item_effect(player)}.to change{player.attack_power}.by(1)
  end
end
