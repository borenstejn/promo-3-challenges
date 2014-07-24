require_relative "manager"


def into_hash(managers)
  hash = Hash.new
  managers.each { |manager| hash[manager.name] = manager.password }
  delivery_guy.each { |manager| hash[manager.name] = manager.password}
end



m1 = Manager.new("Bob", "shcqhdsc")
m2 = Manager.new("Eric", "shcqhdsc")
m3 = Manager.new("Michael", "shcqhdsc")


p into_hash([m1, m2, m3])


class UI

  def intialize(restaurant)
    @restaurant = restaurant
    @passwords = Hash.new
    @restaurant.employees.each { |employee| @passwords[employee.name] = employee}
    @exit = false
    @authenticated = false
  end

  def gets_and_ask(param)
    puts "*" * 30
    puts "enter your #{param}"
    gets.chomp
  end


  def authenticate
    until @authenticate
      login = gets_and_ask("login")
      password = gets_and_ask("password")
      if @passwords[login]
        @current_user =  @passwords[login]
        if @current_user.password == password
          @authenticate = true
          print_action_menu
        end
      end
    end
  end


  def print_action_menu
    puts "Welcome to #{@restaurant.name} !"
    if @current_user.is_a? Manager
      display_manager_actions()
    else
      display_delivery()
    end
  end

end
