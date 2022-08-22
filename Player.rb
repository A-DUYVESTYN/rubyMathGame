class Player

  def initialize(name, lives)
    @name = name 
    @lives = lives
  end

  attr_reader :lives, :name

  def lose_a_life
    @lives -= 1
    # puts "#{@name} lost a life and now has #{@lives} lives"
  end

end