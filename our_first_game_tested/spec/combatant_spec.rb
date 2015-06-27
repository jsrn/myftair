module CombatantSpec
  describe Combatable do
    it "has its stats initialized" do
      player = Player.new
      expect(player).to receive(:initialize_stats)
    end
  end
end
