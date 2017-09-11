require_relative 'game'
require_relative 'player'

players = [
  Player.new('Tevin', :X),
  Player.new('Sasha', :O)
]

p game = Game.new(players)

puts 'Welcome to tic tac toe.'
puts "it is player one's turn"
puts 'Player one, pick a move'

# TODO: Get a move from player one
# TODO: Mark that place on the board
# TODO: Check for win