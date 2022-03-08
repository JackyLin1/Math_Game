class Player
  attr_accessor :name, :lives
  
  def initialize (name)
    @name = name
    @lives = 3
    @playerid = 1
  end

  def loseLife
    @lives -= 1
  end
end

# player1 = Player.new('J')
# puts player1.lives
# player1.loseLife
# puts player1.lives