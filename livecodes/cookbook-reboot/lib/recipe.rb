#  TODO: Define your Recipe class here
class Recipe
  attr_reader :name, :description

  # STATE
  # name
  # description
  def initialize(name, description)
    @name = name
    @description = description
  end

  # def description
  #   @description
  # end
end
