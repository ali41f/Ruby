require_relative 'board'

class Game

  def initialize(players)
    @players = players
    @board = Board.new
  end

  def play_turn(player)
    move = player.get_move
    p move
  end
end
