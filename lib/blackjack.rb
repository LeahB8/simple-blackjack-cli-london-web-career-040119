def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"  
end

def initial_round
 sum = deal_card + deal_card
 display_card_total(sum)
 sum
end


def hit?(current_card_total)
  prompt_user
  option = get_user_input
  
  if option == 'h'
    current_card_total += deal_card
    display_card_total(current_card_total)
  else
    invalid_command
  end
  current_card_total
end

def invalid_command
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_card_total = initial_round
  
  until current_card_total >= 21 do
    current_card_total = hit?(current_card_total)
  end
  end_game(current_card_total)
end