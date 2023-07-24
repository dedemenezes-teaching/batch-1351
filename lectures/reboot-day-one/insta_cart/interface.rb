# PSEUDO CODE STEP 2

# should not be an array anymore, we need to store product name and quantity
# if the item is in the store, we now need to ask HOW MANY
# STORE IN THE HASH


# REFACTOR THE TOTAL PRICE
# we need to go over the cart HASH
# access the product price
# multiply the proiduct price by the quantity in the CART

store_items = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'aspargus' => 9
}

cart = []


puts "--------------------"
puts "Welcome to Instacart"
puts '--------------------'


puts "In our store today:"
store_items.each do |name, price|
  puts "#{name}: #{price}€"
end


user_choice = nil
while user_choice != 'quit'

  puts "Which item? (or 'quit' to checkout)"
  # 5. Get user choice for product
  user_choice = gets.chomp


    if store_items.key?(user_choice)

      cart << user_choice
    else

      if user_choice != 'quit'
        puts "Sorry, we don't have #{user_choice} today."
      end
    end

  p cart
end


# 7. Calculate total price
# 7.0 intialize a counter
bill = 0
# 7.1 go over  the cart array
cart.each do |element|
  # 7.2 for each product you
  # 7.3 access the value for the specific product
  price = store_items[element]
  # 7.4 add it to the counter
  # bill = bill + price
  bill += price
end

# 8. display total price to the user
puts "-------BILL---------"
puts "TOTAL: #{bill}"
puts "--------------------"

# > --------------------
# > Welcome to Instacart
# > --------------------
# > In our store today:
# > kiwi: 1.25€
# > banana: 0.5€
# > mango: 4€
# > asparagus: 9€
# > --------------------
# > Which item? (or 'quit' to checkout)
# > kiwi
# > Which item? (or 'quit' to checkout)
# > pineapple
# > Sorry, we don't have pineapple today.
# > Which item? (or 'quit' to checkout)
# > mango
# > Which item? (or 'quit' to checkout)
# > quit
# > -------BILL---------
# > TOTAL: 5.25€
# > --------------------

# { 'kiwi' => 1}
