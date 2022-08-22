require "./Player"

class Game
  def initialize
    @initial_lives = 3
    @player1 = Player.new("Joe", @initial_lives)
    @player2 = Player.new("Sue", @initial_lives)
    @current_player = @player1
  end
  
  def start_game
    puts "*****************************"
    puts "**        New Game         **"   
    puts "*****************************"
    turn
  end

  def end_game
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/#{@initial_lives}"
    puts "*****************************"
    puts "**       Game Over         **"   
    puts "*****************************"
    puts "Good Bye!"
  end

  def turn
    puts " --- NEW TURN --- "
    @current_player.lose_a_life if !question(@current_player.name)
      
    display_scores
    puts ""

    if(@current_player.lives == 0)
      switch_player
      end_game
    else
      switch_player
      turn
    end
  end


  def question(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    ans = num1 + num2
    puts "#{player}: What does #{num1} plus #{num2} equal?"
    print "> "
    guess = $stdin.gets.chomp

    if guess.to_i == ans
      puts "#{player}: YES!"
      return true
    else
      puts "#{player}: Incorrect..."
      return false
    end
  end

  def display_scores
    puts "|||SCORES||| #{@player1.name}:#{@player1.lives}/#{@initial_lives} vs #{@player2.name}:#{@player2.lives}/#{@initial_lives}" 
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

end