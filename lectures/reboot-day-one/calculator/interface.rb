require_relative './calculator.rb'
# The program will ask the user for two numbers and one of the four operators in order to be able to perform a simple calculation and display the result to the user.

# while CONDITION_IS_TRUE
#   #
# end
user_choice = 'Y' # INITIALIZE VARIABLE FOR THE LOOP
# THIS IS HOW WE ENSURE THAT THE LOOP WILL GET EXECUTED ON THE FIRST RUN
while user_choice == 'Y'
  # PSEUDO
  # 1. ASK FOR FIRST NUMBER TO THE USER
  puts "Enter first number:"
  # 2. GET THE USER INPUT
  # EVERYTHING COMING FROM THE USER COMES AS A STRING
  first_number = gets.chomp.to_f
  # p first_number
  # 3. ASK FOR THE SECOND NUMBER TO THE USER
  puts "Enter second number:"
  # 4. GET THE USER INPUT
  second_number = gets.chomp.to_f
  # 5. ASK THE USER FOR THE OPERATOR
  puts "Enter the operator (+|-|*|/)"
  # 6. GET THE OPERATOR USER
  operator = gets.chomp
  # 7. DISPLAY THE RESULT
  # 7.1 check which operator the user gave us
  result = calculator(first_number, second_number, operator)
  # 7.3 display the result
  p result

  # 8. ASK FOR THE USER IF SHOULD DO ANOTHER ROUND
  puts "Do you want to calculate again? [Y/N]"
  user_choice = gets.chomp.upcase
end
