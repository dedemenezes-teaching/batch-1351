# What’s a variable? What’s the point of using variables? Give an example.
# "A variable is like a box that we can store some data inside. We can then call this variable to access and manipulate the data later on in our code"
first_name = 'Sebastien' # example

# Precisely describe the following line of code using the correct vocabulary.
# age = 18
# "We assign the value of 18 to the variable age"

# What’s a method? What’s the point of defining methods?
# "A method is a set of code/instruction that we want to run multiple times in our code. Rather the repeating the code we can define a method and call it many times"

# Precisely describe what happens at each line using good vocabulary. Write a ruby comment next to the line you’re explaining using the #.
def multiply(x, y) # We define a method called multiply which take two *parameters* of x and y
  return x * y     # calculate the value of multiplying x by y and return it
end                # this ends the method

puts multiply(5, 8) # We call the method and pass the value of 5 and 8 as *arguments* and print the results

# What’s the keyword if ? Give us an example of if statements, using an age variable storing a student’s age for instance.

age = 20

if age > 18
  puts "You can vote!"
else
  puts "You can't vote"
end

# Complete the following code to compute the exact average of students grades (using each ).
grades = [19, 8, 11, 15, 13]
sum = 0

grades.each do |grade|
  sum += grade
end

puts sum.to_f / grades.length

# Refactored
sum.fdiv(grades.length)

# Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  return "#{first_name.capitalize} #{last_name.capitalize}"
end

puts capitalize_name("JeSS", "carvalho")

# What’s the difference between concatenation and interpolation? Give an example.
# "Concatenation is the operation of creating a new string by sticking to strings together. Example:"
full_name = "Sebastien" + " " + "Saunier"

# "Interpolation is the operation of creating a string by executing code inside this string. Example:"
full_name = "#{'sebastien'.capitalize} #{'saunier'.capitalize}"

# Translate each line of pseudo-code into ruby.
fruits = ["banana", "peach", "watermelon", "orange"]
# Print out "peach" from the fruits array in the terminal
puts fruits[1]
# Add an "apple" to the fruits array
fruits << "apple"
# Replace "watermelon" by "pear"
fruits[2] = "pear"
# Delete "orange"
fruits.delete_at(3)


# Translate each line of pseudo-code into ruby.
city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]
# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"
# Update the population to 2000001
city[:population] = 2_000_001
# city[:population] += 1 # Incrementing by 1
# What will the following code return?
city[:mayor]

# Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# TODO: Convert the array of arrays into an array of hashes.
new_students = students.map do |student_array|
  { name: student_array[0], age: student_array[1] }
end
