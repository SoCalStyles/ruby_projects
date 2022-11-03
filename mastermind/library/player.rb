require_relative

class Player
  def initialize(name)
    

  end

  def code_maker()

  end

  def code_breaker()
    
    puts "Please guess the first color:"
    @guess1 = gets.chomp.to_s  
    puts "Please guess the second color:"
    @guess2 = gets.chomp.to_s  
    puts "Please guess the third color:"
    @guess3 = gets.chomp.to_s  
    puts "Please guess the fourth color:"
    @guess4 = gets.chomp.to_s  
    @player_guess = [@guess1, @guess2, @guess3, @guess4]

  end

end