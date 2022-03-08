class Questions

  def initialize
    @num1 = rand(1..21)
    @num2 = rand(1..21)
  end

  def question (player1)
    print "#{player1}: What does #{@num1} plus #{@num2} equal?"
  end

  def compareAnswer (userAnswer, player1)
    @correctAnswer = @num1 + @num2;
    puts userAnswer == @correctAnswer ? 
    "#{player1}: the answer is correct" : "#{player1}: Seriously? NO!"
  end

end

q = Questions.new
puts q.question('John')
print "> "
userAnswer = $stdin.gets.chomp.to_i
puts q.compareAnswer(userAnswer, 'John')

