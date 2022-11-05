require_relative 'computer.rb'
require_relative 'game.rb'
require_relative 'board.rb'
require_relative 'main.rb'

class Player
  def initialize(name)


  end

  @turns_remaining = 12

  def code_maker()

  end

  def code_breaker()
    while @turns_remaining.positive? do
      puts "You have #{@turns_remaining} turns left."
      puts 'Please guess the first color:'
      @guess1 = gets.chomp.to_s
      puts 'Please guess the second color:'
      @guess2 = gets.chomp.to_s
      puts 'Please guess the third color:'
      @guess3 = gets.chomp.to_s
      puts 'Please guess the fourth color:'
      @guess4 = gets.chomp.to_s
      @player_guess = [@guess1, @guess2, @guess3, @guess4]
      @turns_remaining -= 1
      Game.compare_answer
    end

  end

end