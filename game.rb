class Game
  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = @player1
  end

  def begin_game
    problem = Question.new
    puts problem.problem
    puts problem.total

    if problem.check_answer(gets.chomp)
      puts "Correct"
    else
      puts "Incorrect"
      @current_player.reduce_life
    end

  end
end