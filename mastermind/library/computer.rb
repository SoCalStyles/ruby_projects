require_relative

class Computer

  def initialize()
    # maybe create random name for comp
  end

  def self.create_answer()
    @answer_key.map do |element|
      element = @color_options.sample
    end
  end

  @turn = 0
  @colors = @color_options

  def self.guess_answer()
    @guess = Array.new(4)
    @guess.map do |element|
      element = @colors.sample
    end


  end

end
