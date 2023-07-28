#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative './view'
require_relative './recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook #=> an INSTANCE OF COOKBOOK CLASS
    @view = View.new
  end

  def list
    # 1. have the recipes (REPOSITORY!)
    recipes = @cookbook.all
    # 2. Display all the recipes to the user (VIEW)
    @view.display_list(recipes)
  end

  def add
    # 1. get the input from the user (VIEW)
    new_name = @view.ask_for_name
    new_description = @view.ask_for_description
    # 2.1 CRETE THE INSTANCE OF RECIPE
    new_recipe = Recipe.new(new_name, new_description)
    # 2.2 Add to the list
    @cookbook.create(new_recipe)
  end

  def remove
    # 1. display all recipes to the user
    # 1. have the recipes (REPOSITORY!)
    recipes = @cookbook.all
    # 2. Display all the recipes to the user (VIEW)
    @view.display_list(recipes)
    # 2. ask which one to remove ( get the user input )
    index_to_delete = @view.ask_which_one_to_delete
    # 3. Ask the cookbook to DESTROY this recipe
    @cookbook.destroy(index_to_delete)
  end
end

# Controller.new(INSTANCE_OF_COOKBOOK)
