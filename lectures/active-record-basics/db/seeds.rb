# This is where you can create initial data for your app.

# RUBY WAY
# puts 'Creating restaurants...'
# restaurant = Restaurant.new(name: 'McDonalds', address: 'Ipanema')
# restaurant.save

# restaurant = Restaurant.new(name: 'Burger King', address: 'Ipanema')
# restaurant.save

# puts 'Finished zo/'


# FAKE DATA

require 'faker'

puts "Creating 100 restaurants..."

100.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.city)
  restaurant.save
end
