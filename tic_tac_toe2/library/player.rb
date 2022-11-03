require_relative 'game.rb'

class Player
  def initialize

  end

  def player_choice()
    if @board.flatten.count('X') == @board.flatten.count('O')
      puts "#{@player1_name}'s turn, please choose a number to place an X"
      @player1_choice = gets.chomp
      @board = @board.map do |element|
        element.map do |inner_element|
          if inner_element === @player1_choice.to_s
            inner_element = 'X'
          else
            inner_element = inner_element
          end
        end
      end
    else
      puts "#{@player2_name}'s turn, please choose a number to place an O"
      @player2_choice = gets.chomp
      @board = @board.map do |element|
        element.map do |inner_element|
          if inner_element === @player2_choice.to_s
            inner_element = 'O'
          else
            inner_element = inner_element
          end
        end
      end
    end
    puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]} "
    puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} "
    puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} "
    # HERE is where we should try to make board blank
    determine_winner()
  end
  
end
