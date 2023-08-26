class Game
  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = @player1
  end

  def begin_game
    loop do
      problem = Question.new

      puts "----- NEW TURN -----"
      puts problem.problem # Output question
      puts problem.total # Test Answer Only

      if problem.check_answer(gets.chomp)
        puts "Correct"
      else
        puts "#{@current_player.name}: Incorrect"
        @current_player.lives -= 1
      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end

  end
end