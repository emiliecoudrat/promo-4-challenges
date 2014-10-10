require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  "Your score is #{player_score}, bank is #{bank_score}!"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score == 21
    return "Black Jack"
  elsif player_score > 21
    return "You lose"
  elsif player_score > bank_score
    return "You win"
  else
    return "You lose"
  end
end

def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
  player_score = pick_player_card
  bank_score = pick_bank_score
  puts "Card ? (type 'y' or 'yes' for a new card)"
  saisie = gets.chomp

  while saisie == "yes" || saisie == "y" && player_score <= 21
    state_of_the_game
    puts "Card ? (type 'y' or 'yes' for a new card)"
    saisie = gets.chomp
    player_score = player_score + pick_player_card
  end
    puts end_game_message(player_score, bank_score)
end