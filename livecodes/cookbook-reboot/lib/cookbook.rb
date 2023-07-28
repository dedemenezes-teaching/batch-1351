# TODO: Implement the Cookbook class that will be our repository
require 'csv'

class Cookbook
  def initialize(csv_file_path)
    @csv_file = csv_file_path
    @recipes = []
    load_csv
  end

  def all
    # p csv_file_path #=> UNDEFINED VARIABOLE OR METHOD
    @recipes
  end

  def create(recipe) # => `recipe` in here is an INSTANCE OF THE CLASS RECIPE
    # p recipe
    @recipes << recipe
    # SAVE THIS WHOLE ARRAY TO THE CSV
    save_csv
  end

  def destroy(recipe_index)
    # p recipe_index
    @recipes.delete_at(recipe_index)
    save_csv
  end

  private

  def load_csv
    # read the file
    CSV.foreach(@csv_file) do |row|
      # p row #=> ["Crumpets", "Crumpets description"]
      # for each line/row
      # recreate the recipe
      recipe = Recipe.new(row[0], row[1])
      # add the new recipe to the recipes array
      @recipes << recipe
    end
  end

  def save_csv
    # Open the CSV file
    CSV.open(@csv_file, 'wb') do |csv|
      # add EACH recipe to the CSV file
      # iterate over the recipes array
      @recipes.each do |recipe|
        # push the recipe data to the csv file
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
