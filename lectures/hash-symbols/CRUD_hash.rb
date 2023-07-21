# HASH

# CRUD - Create, Read, Update, Destroy
# CREATE
rio = {}
rio = {
  # KEY => VALUE
  'country' => "Brasil",
  'population' => 7000000
}

# READ
rio['population']

# UPDATE
rio['population'] = 7000001
# p rio

# DESTROY
# p rio
rio.delete('population')
# p rio

# ADD KEY/VALUE PAIR TO THE HASH
rio['monument'] = 'Cristo Redentor'
# p rio

# ITERATE
# rio = {
#   # KEY => VALUE
#   'country' => "Brasil",
#   'population' => 7000000
# }

p rio.class

# EACH ON HASH
rio.each do |key, value|
  puts "#{key} has value: #{value}"
end

# CUSTOM METHODS
p rio.keys #=> ["country", "monument"]
p rio.values #=>["Brasil", "Cristo Redentor"]
p rio.key?('name')
p rio.key?('country')


# RICH DATA
cities = {
  'rio' => { 'country' => 'Brasil', 'population' => 7000000 }
}
p cities['rio']['population']
#=> 7000000

cities = [ ["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"] ]
cities[1][2]
