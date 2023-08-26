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

      puts "#{@current_player.name}: #{problem.problem}" # Output question
 
      if problem.check_answer(gets.chomp)
        puts "#{@current_player.name} YES! You are correct."
      else
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.lives -= 1
      end

      display_score # display results
      check_deadplayer # call method check_deadplayer true or false
      switch # call method to switch player turn
      @new_game = false # set to false after game started for message puts
      
      if @game_over # if true, stop the loop
        break
      end
    end
    winner # call method game_over
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def switch
    @current_player = (@current_player == @player1) ? @player2 : @player1 # switch player if current_player match the first player
  end

  def display_score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def check_deadplayer
    @game_over = (@player1.lives <= 0 || @player2.lives <= 0) ? true : false # update variable to true the game is over once this statement met
  end

  def winner
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
  end
end