require_relative 'computer'
require_relative 'game'
require_relative 'player'

class Board
  def initialize
    Array.new(12) { Array.new(4) }
  end

end