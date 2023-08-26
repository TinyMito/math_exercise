require './game'
require './player'
require './question'

# Create new player instance
p1 = Player.new("Player 1")
p2 = Player.new("Player 2")

# Create new game instance
game1 = Game.new(p1, p2)