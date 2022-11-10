require_relative 'computer'
require_relative 'game'
require_relative 'board'

class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @turns_remaining = 12
    # have to reconfigure this; turns remaining in main or here??
  end

  def code_maker()
    @player_answers = [@answer1, @answer2, @answer3, @answer4]
    @player_answers.each_with_index do |answer|
      answer = gets.chomp.to_s
    end
  end

  def code_breaker()
    @player_guess = [@guess1, @guess2, @guess3, @guess4]
    @guess_array = @player_guess.each_with_index do |guess, index|
      puts "Please guess color #"
      guess = gets.chomp.to_s
    end
  end

end