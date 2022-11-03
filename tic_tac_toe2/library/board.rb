require_relative 'game.rb'
require_relative 'player.rb'

class Board
  def initialize()
    @board = Array.new(3) { Array.new(3, '-')}
    @board[0][0] = '1'
    @board[0][1] = '2'
    @board[0][2] = '3'
    @board[1][0] = '4'
    @board[1][1] = '5'
    @board[1][2] = '6'
    @board[2][0] = '7'
    @board[2][1] = '8'
    @board[2][2] = '9'
  end

  def display_board()
    @board = @board.map do |element|
      element.map do |inner_element|
        if inner_element == "X"
          inner_element = inner_element
        elsif inner_element == "O"
          inner_element = inner_element
        else 
          inner_element = " "
        end
      end
    end
    puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]} "
    puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} "
    puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} "
    if @board[0][0] === " "
      @board[0][0] = "1"
    end
    if @board[0][1] === " "
      @board[0][1] = "2"
    end
    if @board[0][2] === " "
      @board[0][2] = "3"
    end
    if @board[1][0] === " "
      @board[1][0] = "4"
    end
    if @board[1][1] === " "
      @board[1][1] = "5"
    end
    if @board[1][2] === " "
      @board[1][2] = "6"
    end
    if @board[2][0] === " "
      @board[2][0] = "7"
    end
    if @board[2][1] === " "
      @board[2][1] = "8"
    end
    if @board[2][2] === " "
      @board[2][2] = "9"
    end
    determine_winner()
  end
  
end