require_relative 'board'
require_relative 'game'
require_relative 'player'

class Computer
  @color_options = %w[blue green orange purple red yellow]
  @answer_key = Array.new(4, ' ')

  def initialize
    # maybe create random name for comp
  end

  def create_answer
    puts @answer_key.class
    @answer_key = @answer_key.map do |element|
      element = @color_options.sample
    end
  end

  @turn = 0
  @colors = @color_options

  def guess_answer
    @guess = Array.new(4)
    @guess.map do |element|
      element = @colors.sample
    end
  end

end
