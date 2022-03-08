require "./players"
require "./questions"
require "./game"
require "./answers"

player1, player2 = argV

newGame = Game.new(player1, player2)

newGame.start #make a start function in game.rb