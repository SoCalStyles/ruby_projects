require_relative 'computer'
require_relative 'board'
require_relative 'player'

# create instance of Game class
class Game
  @color_options = %w[blue green orange purple red yellow]
  @answer_key = Array.new(4, ' ')

  def initialize
    @board = Board.new
    puts 'Welcome to Mastermind!'
    puts 'What is your name?'
    @player = gets.chomp
    @player = Player.new(@player)
    @bot = Computer.new
  end

  def choose_mode
    until (@choice == 1) || (@choice == 2)
      puts "Okay #{@player.name}, type 1 to be the Code Maker, type 2 to be the Code Breaker:"
      @choice = gets.chomp.to_i
    end
  end

  def set_up_game
    case @choice
    when 1
      @name.code_maker
    when 2
      @answer = @bot.create_answer
      puts @answer
      puts 'Alright, the computer has selected the secret colors.'
      @name.code_breaker
    end
  end

  def feedback
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

  def compare_answer
    puts @answer
    puts @player_guess
    if @player_guess == @answer
      puts "Congratulations, you're a Mastermind!"
      puts 'You solved the game in this many turns.'
      puts @answer
    elsif (@player_guess != @answer) && @turns_remaining == 0
      puts 'You are not a Mastermind.'
      puts "The correct answaer was: #{@answer}"
    else
      #something
    end
  end

end