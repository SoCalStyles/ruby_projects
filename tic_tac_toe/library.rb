class Game
  def initialize()
    puts "Welcome to TicTacToe!"
    puts "Please enter Player 1's name:"
    @player1_name = gets.chomp
    puts "Please enter Player 2's name:"
    @player2_name = gets.chomp
    puts "#{@player1_name} will be X. #{@player2_name} will be O."
    create_board()
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
    player_choice()
  end






end