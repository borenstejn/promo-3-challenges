class Restaurant

  attr_accessor :average_rating, :city

  #TODO add relevant accessors if necessary

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0
    @ratings = []

    #TODO: implement constructor with relevant instance variables
  end

  def self.filter_by_city(restaurants, city)
    restaurants_list = []
    restaurants.each do |restaurant|
      if restaurant.city == city
        restaurants_list << restaurant
      end
    end
    return restaurants_list
  end


  def rate(rating)
    @ratings << rating
    @average_rating = (@ratings.inject(:+)) / (@ratings.size)
  end




  #TODO: implement #filter_by_city and #rate methods

end