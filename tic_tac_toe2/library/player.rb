class Player
  def initialize()
    
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
    display_board()
  end

end