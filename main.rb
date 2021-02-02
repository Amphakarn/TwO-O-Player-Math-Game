require './players'
require './questions'

player1 = Players.new("Player1")
player2 = Players.new("Player2")

wrong_answer = "Seriously? No!"
correct_answer = "YES! You are correct"
new_turn = "----- NEW TURN -----"
game_over = "----- GAME OVER -----"
good_bye = "Good bye!"

current_player = player1

while player1.lives > 0 && player2.lives > 0
  question1 = Questions.new
  puts "#{current_player.name}: #{question1.question}"

  print "> "
  answer = gets.chomp.to_i

  if question1.answer == answer
    puts "#{current_player.name}: #{correct_answer}"
  else
    puts "#{current_player.name}: #{wrong_answer}"
    current_player.deduct_live
  end
  puts "P1: #{player1.lives}/#{Players::LIVE} vs P2: #{player2.lives}/#{Players::LIVE}"
  
  current_player.lives > 0 ? (puts "#{new_turn}") : (puts "#{game_over}")

  current_player = current_player == player1 ? player2 : player1
end

if player1.lives > 0
  puts "#{player1.name} wins with a score of #{player1.lives}/#{Players::LIVE}"
end

if player2.lives > 0
  puts "#{player2.name} wins with a score of #{player2.lives}/#{Players::LIVE}"
end

puts "Good-Bye!"








