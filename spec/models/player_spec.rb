require 'spec_helper.rb'

describe Player do
  let(:player) {Player.new}

  describe ".new" do
    it "is a Player" do
      expect(player).to be_a(Player)
    end
  end

  describe "#score" do
    it "returns the player score" do
      expect(player.score).to eq(0)
    end

    it "should have a writer" do
      player.score += 2
      expect(player.score).to eq(2)
    end
  end

  describe "#cpu_score" do
    it "returns a score" do
      expect(player.cpu_score).to eq(0)
    end

    it "should have a writer" do
      player.cpu_score += 2
      expect(player.cpu_score).to eq(2)
    end
  end
end
