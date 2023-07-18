# METHODS

# a reusable block of code that returns a value

# SYNTAX
# def method_name
#   # code instruction
# end

# Every method returns something !!!!
# inside of the method we are RETURNing, not PUTSing
# DON'T PUTS INSIDE OF A METHOD !!!!
# Why?? Becasue then you can do whatever you want with the returned value.
# If you want to print
# 'puts method_name'
# if you want to assign it to a variable you can do so as well
# this_is_the_greeting = greet()

require 'date'

# Following example is a method without parameters
def tomorrow
  tomorrow = Date.today + 1
  return tomorrow
end

puts tomorrow



#=> "Hello John!"
puts "Hello PEdro!"
puts "Hello Alicja!"

# Following example is a method with parameters
# name is a PARAMETER
def greet(name)
  return "Hello #{name}"
end

# ARGUMENT IS THE ACTUAL VALUE TO BE USED IN THE METHOD
# 'Matt', 'Walid' and 'Alicja' are ARGUMENTS
puts greet('Matt')
puts greet('Walid')
puts greet('Alicja')


# first_name and last_name are PARAMETERS
def full_name(first_name, last_name)
  name = "#{first_name.capitalize} #{last_name.capitalize}"
  name
end
#=> 'Humberto Pedra'
#=> 'Humberto pedra' X
#=> 'Matt McGovern'

# 'hUmBeRtO' and 'PeDrA' are ARGUMENTS!
student_name = full_name('hUmBeRtO', 'PeDrA')

puts "Student full name is: #{student_name}"
