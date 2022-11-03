require_relative

class Game
  @color_options = %w[blue green orange purple red yellow]
  @answer_key = Array.new(4)

  def initialize
    puts "Welcome to Mastermind!"
    puts "Type 1 to be the Code Maker, type 2 to be the Code Breaker:"
    @choice = gets.chomp.to_i
    if @choice == 1
      @name.code_maker
      # dd
    elsif @choice == 2
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

  def feedback()
    @correct = 0
    @incorrect_position = 0
    @incorrect_color = 0

    puts "Correct: #{@correct}"
    puts "Incorrect Position: #{@incorrect_position}"
    puts "Incorrect Color: #{@incorrect_color}"
  end

  def compare_answer
    if @player_guess == @answer
      puts "Congratulations, you're a Mastermind!"
      puts 'You solved the game in this many turns.'
    elsif (@player_guess != @answer) # AND already 12 turns
      puts 'You are not a Mastermind.'
      puts 'The correct answaer was: '
    else
      # call feedback method
    end
  end
end
