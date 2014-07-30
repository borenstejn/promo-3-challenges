require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

def ask(param)
  print "#{param}"
  gets.chomp
end

def create_post(user)
  name = ask("name")
  source_url = ask("url")
  rating = ask("rating")
  post_params = (name: name, source_url: source_url, rating: rating, date: Time.now)
  user.posts.create(post_params)
end


def delete_post(user, id)
  user.post.Posts.find_by_id(id).delete
end


logged_in = false

until logged_in = true
  puts "what's your id ?"
  id = ask("id")
  user = User.find_by_id(id)
  if user
    logged_in = true
  end
end





# TODO: build your interface with login and CRUD tasks on the posts
