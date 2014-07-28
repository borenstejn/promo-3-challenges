require 'sqlite3'

def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{CREATE TABLE IF NOT EXISTS posts
(
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  name VARCHAR(100),
  rating INT TYPE DEFAULT 2,
  source_url VARCHAR(300),
  date DATETIME
)
  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def create_post(db, post)
  db.execute("INSERT INTO posts(name, source_url, date, rating)
  VALUES ('#{post[:name]}', '#{post[:source_url]}', '#{post[:date]}', #{post[:rating]})")
  #TODO: add a new post to your db
end

def get_posts(db)
  puts db.execute("SELECT * FROM posts ")
   #TODO: list all posts
end

def get_post(db, id)
  puts db.execute("SELECT * FROM posts
  WHERE id = #{id}")
  #TODO: get a specific post
end

def update_post(db, id, name)
  db.execute("UPDATE posts SET name = '#{name}'
  WHERE id = #{id}")
	#TODO: update a post's name in your db
end

def delete_posts(db)
  db.execute("DELETE FROM posts")
  #TODO: delete a post in your db
end

def delete_post(db, id)
  db.execute("DELETE FROM posts
  WHERE id = #{id}")
  #TODO: delete a specific post in your db
end