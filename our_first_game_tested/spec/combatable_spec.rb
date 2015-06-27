require_relative "../lib/combatable.rb"

describe Combatable do
  let(:combatable) { Class.new { include Combatable } }

  it "heals the combatable passed to it" do
    dummy_combatable = combatable.new
    expect(dummy_combatable).to respond_to(:hit_points)
    expect(dummy_combatable).to respond_to(:attack_power)
  end

  it "has its stats initialized" do
    dummy_combatable = combatable.new
    allow(dummy_combatable).to receive(:initialize_stats)
  end
end
