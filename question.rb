class Question
  # Getter for problem question and total value for comparison since this need to be access by Game class
  attr_reader :problem, :total
  
  def initialize
    val1 = rand(1..20) # random 1 to 20
    val2 = rand(1..20) # random 1 to 20
    @problem = "What does #{val1} plus #{val2} equal?" # The main question
    @total = val1 + val2 # set the total value for comparison to answer
  end

  def check_answer(answer)
    # Check player's answer and return true or false
    answer.to_i == total # Convert to integer from input
  end
end