require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  db.execute("SELECT t.Name, art.Name, alb.Name
    FROM Track t
    JOIN Album alb ON t.AlbumID = alb.AlbumID
    JOIN Artist art ON alb.ArtistID = art.ArtistID")
  # TODO: return the list of tracks with their album and artist
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
end

puts detailed_tracks(db)