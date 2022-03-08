class Game

  def initialize (p1, p2)
    @player1 = Player.new(p1)
    @player2 = Player.new(p2)
   
  end

  def start 
  @currentRound = Questions.new
  round
  end

  def round

    @currentRound.question(@player1.name)
    print "> "
    userAnswer = $stdin.gets.chomp.to_i
    puts @currentRound.compareAnswer(userAnswer, @player1.name)
    if(@currentRound.compareAnswer(userAnswer, @player1.name) != true )
      @player1.lives -= 1
    end
    winner


    @currentRound = Questions.new
    @currentRound.question(@player2.name)
    print "> "
    userAnswer = $stdin.gets.chomp.to_i
    puts @currentRound.compareAnswer(userAnswer, @player2.name)
    if(@currentRound.compareAnswer(userAnswer, @player2.name) != true)
      @player2.lives -= 1
    end
    winner

    start
  end

  def winner
    if (@player1.lives == 0)
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3 \n Good Bye!"
      abort
    elsif (@player2.lives == 0)
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3 \n Good Bye!"
      abort
    else
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3" 
      puts "----new turn ----"
    end
  end
end

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
