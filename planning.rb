class Player # Store player information and method to update player stats
  # Setter and Getter :lives to keep track scores
  # Initialize: player start with 3 @lives by default
  # Method: "reduce_life" for answering wrong => remove 1 live from @lives
end

class Math # Generate math problem with value between 1 to 20
  # Setter and Getter :problem :total
  # Initialize: random 1 to 20 for val1 and val2
  # @problem "What does #{val1} plus #{val2} equal?"
  # @total val1 + val2 total to compare against
  # Method: "check_answer" check player gets.chomp against @total return true or false
end

class Game # Runtime (loop) logic of the game, switching between two players, Game class will be output questions and inputs
  # Initialize: create object Player.new for player1 and player2
  # @current_player would start with object player1
  # @loser if one lower is true default false
  # Method: "begin_game" the game with first question for player1, call the Math.new
  # gets.chomp for player input
  # condition check player answer if true or false, if false call player1 method to move 1 live
  # Method: "display_score" to display both players lives left. ie. "P1: 3/3 vs P2: 3/3"
  # Method: "switch" turn base condition if current player1 = player1 then switch to player2
  # Method: "game_over" output the winner
  # Method: "check_deadplayer" check player lives hit 0 => if true
end

