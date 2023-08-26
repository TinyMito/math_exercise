class Player
  attr_accessor :lives, :name

  def initialize(p)
    @name = p
    @lives = 3
  end
end