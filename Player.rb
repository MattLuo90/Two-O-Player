require './question'

class Player
  attr_accessor :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def life_decrease 
    @life -= 1
  end

  def ask_question
    question = Questions.new
    question.random_question(@name)
    print '> '
    player_answer = gets.chomp
    if question.validate(player_answer)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      life_decrease
    end
  end
end