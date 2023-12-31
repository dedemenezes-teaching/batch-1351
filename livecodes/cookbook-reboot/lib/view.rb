# TODO: Define your View class here, to display elements to the user and ask them for their input
class View
  # PUTS
  # GETS

  def display_list(array_of_recipes)
    array_of_recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end


  def ask_for_name
    puts "Name?"
    gets.chomp
  end

  def ask_for_description
    puts "Description?"
    gets.chomp
  end

  def ask_which_one_to_delete
    puts "Which one?"
    gets.chomp.to_i - 1 # => EVERYTHING COMING FROM GETS.CHOMP COME AS STRING
  end
end
