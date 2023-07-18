# VARIABLES
# a variable is a box to store a value to use later

# INITIALIZE/CREATE

# SYNTAX
# variable_name = value - We say: I'm assigning value to the variable variable_name
# CANT DO THIS
# value = variable_name
age = 35

# ACCESS/READ
age

#=> I'm 35 years old
puts "I'm #{age} years old"

# REASSIGNING
age = 32
puts "I'm #{age} years old"

puts "one year passes"

# REASIGNING AND INCREMENTING THE VARIABLE AGE BY ONE
age = age + 1
age += 1
# previous line is the SAME THING AS line 25.
# Just a different syntax :)

puts "I'm #{age} years old"

city = 'Rio'
population = 7000000

city_details = "#{city} population is #{population}"

puts city_details
