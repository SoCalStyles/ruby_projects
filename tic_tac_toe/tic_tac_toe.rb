

class player
  attr_reader :choice
  def initialization(choice)
    @choice = choice
  end

  def placement(num)
    # this is where the X/0 goes based on num they chose
  end
end

player1 = Player.new(X)