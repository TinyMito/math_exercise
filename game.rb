class Game
  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = @player1
    @new_game = true
    @game_over = false
  end

  def begin_game
    loop do #simple loop infinite
      problem = Question.new

      if !@new_game
        puts "----- NEW TURN -----"
      end

      puts problem.problem # Output question
      puts problem.total # Test Answer Only

      if problem.check_answer(gets.chomp)
        puts "Correct"
      else
        puts "#{@current_player.name}: Incorrect"
        @current_player.lives -= 1
      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      @new_game = false

      check_deadplayer # call method check_deadplayer true or false
      
      if @game_over # if true, stop the loop
        break
      end
      
    end

    game_over # call method game_over

  end

  def display_score
  end

  def check_deadplayer
    if @player1.lives <= 2 || @player2.lives <= 2
      @game_over = true # update variable to true the game is over once this statement met
    end
  end

  def game_over
    puts "someone won"
  end

  def switch
  end
end