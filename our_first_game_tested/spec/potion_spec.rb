require_relative "../lib/potion.rb"

describe Potion do
  it "heals the combatable passed to it" do
    player = double("player")
    expect(player).to receive(:heal)
    Potion.new.perform_item_effect(player)
  end
end
