# Let’s model a horse race. The user can bet on (choose) a horse, the horses run the race (the computer randomly selects a winner), and the winner is printed out in the terminal with a message telling the user if she/he won. Let’s start with the pseudo code. How are we going to model the horses?

# STEP 2
# What about adding a balance to the game? Let’s say you arrive to the horse race with 100€, win 50€ if you place a correct bet and lose 10€ if your horse does not win. What do you need to change to your horse race program? Let’s make sure the user can’t play if she/he does not have enough money.

# 1. we need to create a variable to store the user balance
# 2. User wins 50€ if correct horse winner
# 3. USer loses 10€ if she/he lost
# 4. User can play until they are out of money
# 5. about the loop:
# 5.1 where does the loop start? first thing that get repeated
# 5.2 where does the loop ends?

balance = 10
horses = ['Ozzy', 'Janis', 'Jimi', 'McQueen']

# THE LOOP START
until balance <= 0
  horses.each do |horse|
    puts "- #{horse}"
  end
  puts "Pick your winner:"
  user_choice = gets.chomp
  computer_choice = horses.sample
  puts "The winner is: #{computer_choice}"
  if computer_choice == user_choice
    balance = balance + 50
    # balance += 50
    puts "You won! Your balance now is: #{balance}£"
  else
    # balance = balance - 10
    balance -= 10
    puts "You lost! Your balance now is: #{balance}£"
  end
end
