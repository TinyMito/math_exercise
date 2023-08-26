class Question
  # Getter for problem question and total value for comparison since this need to be access by Game class
  attr_reader :problem, :total
  
  def initialize
    val1 = rand(1..20)
    val2 = rand(1..20)
    puts @problem = "What does #{val1} plus #{val2} equal?"
    puts @total = val1 + val2
  end
end