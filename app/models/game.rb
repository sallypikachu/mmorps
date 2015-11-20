class Game
  attr_accessor :cpu

  RPS = {
    "rock" => 2,
    "scissor" => 1,
    "paper" => 0,
  }

  def initialize
    @cpu = RPS.keys.sample
  end

  def win_or_lose(input)
    RPS[input] - RPS[cpu]
  end
end
