require "./players"
class Questions

  def initialize
    @num1 = rand(1..21)
    @num2 = rand(1..21)
  end

  def question (currentPlayer)
    print "#{currentPlayer}: What does #{@num1} plus #{@num2} equal?"
  end

  def compareAnswer (userAnswer, currentPlayer)
    @correctAnswer = @num1 + @num2;
    
    puts userAnswer == @correctAnswer ? 
    "#{currentPlayer}: the answer is correct" : "#{currentPlayer}: Seriously? NO!"

    # if (userAnswer != @correctAnswer) 
    #   currentPlayer.loseLife
    #   puts currentPlayer.lives
    # end

  end

end

