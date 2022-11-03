class Game
  def initialize(p1, p2)
    @player1_name = p1
    @player2_name = p2
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
    puts "Here is your starting board:"
    puts ' ' + @board[0][0] + ' | ' + @board[0][1] + ' | ' + @board[0][2]
    puts ' ' + @board[1][0] + ' | ' + @board[1][1] + ' | ' + @board[1][2]
    puts ' ' + @board[2][0] + ' | ' + @board[2][1] + ' | ' + @board[2][2]
    player_choice()
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

  def determine_winner()
    if @board[0][0] == @board[0][1] && @board[0][1] == @board[0][2]
      if @board[0][0] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board[1][0] == @board[1][1] && @board[1][1] == @board[1][2]
      if @board[1][0] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board[2][0] == @board[2][1] && @board[2][1] == @board[2][2]
      if @board[2][0] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]
      if @board[0][0] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]
      if @board[0][1] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2]
      if @board[0][2] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
      if @board[0][0] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      if @board[0][2] === 'X'
        puts "#{@player1_name} has won the game!"
      else
        puts "#{@player2_name} wins the game!"
      end
    elsif @board.flatten.count('X') == 5
      puts "It's a tie game!"
    else
      player_choice()
    end
  end

end