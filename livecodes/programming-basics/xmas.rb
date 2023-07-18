# Write a method which returns the number of days until next Xmas.

# METHOD SIGNATURE
# 1. What is the name? xmas_countdown
# 2. What DATA TYPE should the method return? Integer
# 3. Should this method take any Parameter?
# 0. require the library date
require "date"

# puts "hello"
# p "hello"

def xmas_countdown
  # 1. get todays date
  today = Date.today
  # 2. Get todays year!
  year = today.year #=> 2023
  # 3. Crete the =xmas date for the same year
  xmas = Date.new(year, 12, 25)
  if (xmas - today).negative?
    xmas = Date.new(year + 1, 12, 25)
  end
  # 3. subtract
  (xmas - today).to_i
end

# days_til_xmas = xmas_countdown
puts xmas_countdown
puts xmas_countdown.class == Integer
puts xmas_countdown == 160
