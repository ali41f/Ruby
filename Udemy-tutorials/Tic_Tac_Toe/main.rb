require_relative 'game'
require_relative 'player'

players = [
  Player.new('Tevin', :X),
  Player.new('Sasha', :O)
]

p game = Game.new(players)
