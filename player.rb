class Player
  # Need to be getter and setter for Game class
  attr_accessor :lives, :name

  def initialize(p)
    @name = p
    @lives = 3
  end
end