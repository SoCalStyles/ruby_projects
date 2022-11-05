require_relative 'computer.rb'
require_relative 'game.rb'
require_relative 'player.rb'
require_relative 'main.rb'

class Board
  def initialize()
    @board = Array.new(12) { Array.new(4) }
  end

end