class Game
  def initialize(p1, p2)
    @player1_name = p1
    @player2_name = p2
  end

  def create_board()
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