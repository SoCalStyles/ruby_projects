class Game
  def initialize()
    @player1 = Player.new(@player1_name)
    @player2 = Player.new(@player2_name)
    @board = Board.new
  end

  def determine_winner()
    if @board[0][0] == @board[0][1] && @board[0][1] == @board[0][2]
      if @board[0][0] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board[1][0] == @board[1][1] && @board[1][1] == @board[1][2]
      if @board[1][0] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board[2][0] == @board[2][1] && @board[2][1] == @board[2][2]
      if @board[2][0] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]
      if @board[0][0] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]
      if @board[0][1] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2]
      if @board[0][2] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
      if @board[0][0] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      if @board[0][2] === 'X'
        puts "#{@player1} has won the game!"
      else
        puts "#{@player2} wins the game!"
      end
    elsif @board.flatten.count('X') == 5
      puts "It's a tie game!"
    else
      player_choice()
    end
  end

end