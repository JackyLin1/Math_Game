require "./players"
class Game

  def initialize (p1, p2)
    @player1 = Player.new(p1)
    @player2 = Player.new(p2)
   
  end

  def printScore 
    @roundScore = "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    print "#{@roundScore}"
  end
  # def @p

  # end

end

d = Game.new("jacky", "chris")
puts d.printScore

    # funcitons:
    # @switchPlayer
    # @currentPlayer
    # @winner

# print something like: P1: 2/3 vs P2: 3/3
# then do 1 of 2 things:
    #print ------NEW TURN-------
    # or
    #print something like "Player 1 wins with a score of 1/3"
# then print ------GAME OVER-----
# then print Goodbye!
