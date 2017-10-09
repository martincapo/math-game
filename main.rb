require 'pry'
require './players'
require './games'

# binding.pry

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
math_game = Game.new()
player = p1
o_player = p2
while p1.is_alive? && p2.is_alive? do
  answer = math_game.gen_question(player.name)

  if math_game.is_wrong?(answer)
    puts "Seriously? No!"
    player.lose_life()
    puts "P1: #{p1.current_lives()}vs P2:#{p2.current_lives()}"
    if p1.is_alive? && p2.is_alive?
      puts "----- NEW TURN -----"
    else
      puts "#{o_player.name} won #{o_player.current_lives()}"
      puts "----- GAME OVER -----"
    end
  end

  if player == p1
    player = p2
    o_player = p1
  else
    player = p1
    o_player = p2
  end


end


# puts p1.lives
