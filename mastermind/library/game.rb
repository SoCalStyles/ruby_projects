require_relative 'computer.rb'
require_relative 'board.rb'
require_relative 'player.rb'
require_relative 'main.rb'

class Game
  @color_options = %w[blue green orange purple red yellow]
  @answer_key = Array.new(4)

  def initialize
    @board = Board.new
    puts "Okay #{@name}, type 1 to be the Code Maker, type 2 to be the Code Breaker:"
    @choice = gets.chomp.to_i
    if @choice == 1
      @name.code_maker
      # dd
    elsif @choice == 2
      puts "Alright, the computer has selected the secret colors."
      @name.code_breaker
      #ff
    else
    # do a loop on this to ensure 1 or 2 is chosen

  end

  def choose_role
    # if player chooses maker
      # call player code maker method
    
    # if player chooses guesser
     # call player code_breaker method
    @answer = Computer.create_answer()
  end

  def self.feedback
    @correct = 0
    @incorrect_position = 0
    @incorrect_color = 0
    @wrong_colors = []
    @player_guess.map do |guess|
      if @answer.inlude?(guess)
        if @player_guess.index(guess) == @answer.index(guess)
          @correct += 1
        else
          @incorrect_position += 1
        end
      else
        @wrong_colors.push(guess)
      end
    end
    @incorrect_color = (4 - wrong_colors.size)    
    puts "Correct: #{@correct}"
    puts "Incorrect Position: #{@incorrect_position}"
    puts "Incorrect Color: #{@incorrect_color}"
    @name.code_breaker
  end

  def self.compare_answer
    if @player_guess == @answer
      puts "Congratulations, you're a Mastermind!"
      puts 'You solved the game in this many turns.'
    elsif (@player_guess != @answer) && @turns_remaining == 0
      puts 'You are not a Mastermind.'
      puts "The correct answaer was: #{@answer}"
    else
      self.feedback
    end
  end
end
