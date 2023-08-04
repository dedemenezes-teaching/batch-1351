require 'faker'

10.times do
  # create = .new + .save
  Restaurant.create(
    name: Faker::Cannabis.brand,
    city: "#{Faker::Movies::StarWars.planet} city"
  )
  # restaurant.save
end
