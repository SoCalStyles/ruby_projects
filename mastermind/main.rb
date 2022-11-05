require_relative './library/computer.rb'
require_relative './library/game.rb'
require_relative './library/player.rb'
require_relative './library/board.rb'

puts "Welcome to Mastermind!"
puts "What is your name?"
@name = gets.chomp
@name = Player.new(name)

Game.new

#ex Steve is @name
# Steve is now an instance of a player object
# Steve can now do all things players do