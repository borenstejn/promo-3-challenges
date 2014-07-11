 #TODO: return number of calories for this mcDonald order

def calories_counter(*orders)

	total_calories = 0

	calories = {
  	"Cheese Burger" => 290,
  	"Big Mac" => 300,
  	"Mc Bacon" => 400,
  	"Royal Cheese" => 130,
  	"French fries" => 130,
  	"Potatoes" => 130,
  	"Coca" => 160,
  	"Sprite" => 170,
  	"Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
  	"Best Of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca"),
  	"Best Of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
   }
  

   orders.each do |item|
   	total_calories = total_calories + calories[item]
   end

   return total_calories

  #TODO: return number of calories for a less constrained order
end


def poor_calories_counter(burger, side, beverage)
  calories = {
  	"Cheese Burger" => 290,
  	"Big Mac" => 300,
  	"Mc Bacon" => 400,
  	"Royal Cheese" => 130,
  	"French fries" => 130,
  	"Potatoes" => 130,
  	"Coca" => 160,
  	"Sprite" => 170,
   }
   return calories[burger]+calories[side]+calories[beverage]
end





puts calories_counter("Big Mac", "French fries", "Happy Meal", "Coca")

