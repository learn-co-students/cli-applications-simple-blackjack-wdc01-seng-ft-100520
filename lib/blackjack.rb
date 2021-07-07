require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1...11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  return gets.chomp
  # code #get_user_input here
end

def end_game(num)
 puts "Sorry, you hit #{num}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  print display_card_total(sum)
  return sum
  # code #initial_round here
end

def hit?(num)
   prompt_user
    input = get_user_input
    if input == 's'
      num
    elsif input == 'h'
      deal_card + num
    else
      invalid_command
      hit?(num)
  end
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num > 21
  num = hit?(num)
  display_card_total(num)
end
end_game(num)
end
    
