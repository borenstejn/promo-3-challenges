require 'CSV'

filepath = 'cd ~/code/borenstejn/promo-3-challenges/cd 02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv'


class Cookbook
  def initialize
    @recipes = []
    @filepath = 'cd ~/code/borenstejn/promo-3-challenges/cd 02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv'
    CSV.foreach(filepath) do |recipe|
      recipes << recipe
    end
    recipes
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
  end

  def show_recipes
  end

  def create_recipe(name)
  end

  def destroy_recipe(index)
  end
  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.
end
