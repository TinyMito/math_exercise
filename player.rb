class Player
  # Need to be getter and setter for Game class
  attr_accessor :lives, :name

  def initialize(p)
    @name = p # set player name
    @lives = 3 # default 3 lives
  end
end