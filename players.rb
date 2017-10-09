class Player
# TODO: Remove lives when testing is done
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life()
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end

  def current_lives()
    "#{@lives}/3"
  end

end
