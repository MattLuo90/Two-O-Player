require './Player'

class Game
  def initialize
    @player_1 = Player.new('Matt Luo')
    @player_2 = Player.new('Zio Tan')
  end
  
  def status
    puts "#{@player_1.name}: #{@player_1.life}/3 vs #{@player_2.name}: #{@player_2.life}/3"
  end

  def check_winner
    if @player_1.life == 0
      puts "#{@player_2.name} wins with a score of #{@player_2.life}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit(0)
    elsif @player_2.life == 0
      puts "#{@player_1.name} wins with a score of #{@player_1.life}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit(0)
    end
  end

  def begin_game
    @player_1.ask_question
    check_winner
    status
    puts "----- NEW TURN -----"
    @player_2.ask_question
    check_winner
    status
    puts "----- NEW TURN -----"
    begin_game
  end
end