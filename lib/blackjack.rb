def welcome
  puts "Welcome to the Blackjack Table"  # code #welcome here
end

def deal_card
  card = 1 + rand(11)
  return card
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total (sum)

end

def hit?(card_total)
  prompt_user
  userInput = get_user_input
  if userInput == "s"
    return card_total
  elsif userInput == "h"
    card_total += deal_card
  else
    invalid_command
  end# code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21

    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
  # code runner here
end
