require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

User.where(name: 'toto', email: 'toto@toto.com').first_or_create

<<<<<<< HEAD
p User.last

=======
>>>>>>> da7fb3cf124754258bd9a08c890e042c3de1cc7d
def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post(user)
  name = ask('Name:')
  source_url = ask('Source URL:')
  rating = ask('Rating:')
  post_params = { name: name, source_url: source_url, date: Time.now, rating: rating }

  user.posts.create(post_params

  # TODO: use ActiveRecord to add a new post for the user logged in!
end

def list_posts(user)
  p user.posts
  # TODO: use ActiveRecord to get all posts of the current user
end

def delete_posts(user)
  user.posts.delete_all
  # TODO: use ActiveRecord to delete all posts of current user
end

logged_in = false

until logged_in
  puts 'Please login with your <id>'
  id = ask("id")
  user = User.find_by_id(id)
  if user
    logged_in = true
  end
end

while true

  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

  case ask('>').to_i
  when 1 then create_post(user)
  when 2 then list_posts(user)
  when 3 then delete_posts(user)
  when 4 then break
  end
end
