class Questions
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @result = @num1 + @num2
  end

  def random_question(name)
    puts "#{name}: What does #{@num1} plus #{@num2} equal?"
  end

  def validate (player_answer)
    @result == player_answer
  end
end