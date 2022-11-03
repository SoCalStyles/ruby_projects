require_relative 'library.rb'

puts "Welcome to TicTacToe!"
puts "Please enter Player 1's name:"
player1_name = gets.chomp
puts "Please enter Player 2's name:"
player2_name = gets.chomp
puts "#{player1_name} will be X. #{player2_name} will be O."

tic_tac_toe = Game.new(player1_name, player2_name)