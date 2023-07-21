students =     [ 'herminone', "ron", 'draco']
students_age = [ 15         , 16   , 15     ]
# INDEXES =>      0           1      2

students[0]

students.each_with_index do |name, index|
  puts "#{name.capitalize} is #{students_age[index]}"
end
#=> Herminone is 15
#=> Ron is 16
#=> Draco is 15


students_age = {
  'hermione' => 15
}
puts students_age['hermione']
