Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

helo
Classes:
1. index.rb
2. players.rb
3. questions.rb
4. answers.rb
5. Game.rb  


Roles:
1. player will type in their name inside terminal (argv), import all the classes here, Start games. (checks user I/O for name) {ruby index name1 name2} 

2. get players name from index when they typed in. state: initialize players life and name. "Define players as red and blue", behaviour: decrease life upon false answer. (current player)

3. state: questions, behaviour: use math.random to generate num from 1 to 20. and insert them into string "#{} plus #{} equal?"

4. state: the logics for math  behaviour: check if answer is right or wrong and output a string (string for right answer, and wrong answer) use ternery operator to determine right or wrong (checks user I/O) (compare user and correct answer see if right or wrong)

5. state: save in p1 and p2 name. keep score. behaviour: update on current score after each question. perform game over function (base on turns.rb) (if one player has no life the other becomes winner) (gameloop)


Methods: 
1. player1, player2 = ARGV, var = Game.new(player1, player2), var.start, require all the classes.

2. def initalize @name, @lives, @playerId 
  def looseLives if (answer false) lives -= 1

3. def initialize randomNum num1= random ,num2 = random
   def question(player, num1, num2) math.random into 2 num and inserted into string "Player #{player} : What does #{num1} plus #{num2} equal?"

4. def initialize @userAnswer @correctAnswer, attr_accessor :userAnswer, 
  def correctAnswer #{ran.num1 + ran.num2}, 
  def compareAnswer(player) if correctAnswer === userAnswer output message "player#{player}: the answer is correct" or "player#{player}: seriously NO!",  
  userAnswer= argV

5. def initialize(player1, player2) @roundScore = "P1: 3/3 vs P2: 3/3" print "----new turn ----", currentPlayer = player1
While (gameEnd === false) {
def game put "P1: 3/3 vs P2: 3/3" print "----new turn ----" 
}

def switchPlayer if(currentPlayer.id === 1) currentPlayer = player2 else {currentPlayer = player1}
def winner (currentPlayer) if (currentPlayer.lives = 0) switchPlayer 
                            "#{currentPlayer} wins with a score of #{p2.lives}/3  \n Good Bye!" 
                            return true;
                          else print "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3" print "----new turn ----".

gameEnd = winner





