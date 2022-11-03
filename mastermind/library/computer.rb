require_relative

class Computer
  def initialize()

  end

  def create_answer()
    @answer = @answer_key.map do |element|
      element = @color_options.sample
    end
  end

end
