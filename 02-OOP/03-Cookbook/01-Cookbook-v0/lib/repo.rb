class Repo

attr_accessor :recipes

filepath = 'cd ~/code/borenstejn/promo-3-challenges/cd 02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv'

  def initialize
    @recipes = []
    CSV.foreach(filepath) do |recipe|
      @recipes << recipe
    end
  end

end
