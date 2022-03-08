require "./players"
require "./questions"
require "./game"


player1, player2 = ARGV

newGame = Game.new(player1, player2)

newGame.start #make a start function in game.rb