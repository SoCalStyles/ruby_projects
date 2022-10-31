require './library/game.rb'
require './library/player.rb'

puts "Welcome to Tic-Tac-Toe!"
puts "Please enter player one's name:"
player1 = gets.chomp 
puts "Please enter player two's name:" 
player2 = gets.chomp

player1 = Player.new(player1, 'X')
player2 = Player.new(player2, 'O')

tic_tac_toe = Game.new(player1, player2)

tic_tac_toe.create_board

puts "#{player1}, choose a number to place an X."
p1_choice = gets.chomp
Player.choose_space(p1_choice)