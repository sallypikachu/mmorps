require 'spec_helper.rb'

describe Game do
  let(:game) {Game.new}

  describe ".new" do
    it "is a Game" do
      expect(game).to be_a(Game)
    end
  end

  describe "#cpu" do
    it "returns a rock, scissor, or paper" do
      expect(Game::RPS.keys.include?(game.cpu)).to eq(true)
    end
  end

  describe "#win_or_lose" do
    it "returns a score" do
      expect(game.win_or_lose("rock")).to be <= 2
      expect(game.win_or_lose("rock")).to be >= 0
    end
  end
end
