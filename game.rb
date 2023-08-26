class Game
  # Set getter and setter
  attr_accessor :current_player, :new_game, :game_over
  attr_reader :player1, :player2

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = self.player1
    @new_game = true
    @game_over = false
  end

  def begin_game
    loop do #simple loop infinite
      problem = Question.new

      if !self.new_game
        puts "----- NEW TURN -----"
      end

      puts "#{self.current_player.name}: #{problem.problem}" # Output question
 
      if problem.check_answer(gets.chomp) # Check user input value return correct TRUE or incorrect FALSE
        puts "#{self.current_player.name} YES! You are correct."
      else
        puts "#{self.current_player.name}: Seriously? No!"
        self.current_player.lives -= 1
      end

      self.display_score # call method display results
      self.check_deadplayer # call method check_deadplayer true or false
      self.switch # call method to switch player turn
      self.new_game = false # set to false after game started for message puts
      
      if self.game_over # if true, stop the loop
        break
      end
    end
    self.winner # call method game_over
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def switch
    self.current_player = (self.current_player == self.player1) ? self.player2 : self.player1 # switch player if current_player match the first player
  end

  def display_score
    puts "P1: #{self.player1.lives}/3 vs P2: #{self.player2.lives}/3"
  end

  def check_deadplayer
    self.game_over = (self.player1.lives <= 0 || self.player2.lives <= 0) ? true : false # update variable to true the game is over once this statement met
  end

  def winner
    puts "#{self.current_player.name} wins with a score of #{self.current_player.lives}/3"
  end
end