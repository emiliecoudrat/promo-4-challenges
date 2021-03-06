require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  tab = db.execute"SELECT t.name, al.title, ar.name FROM tracks t
   JOIN albums al ON (t.album_id = al.id)
   JOIN artists ar ON (al.artist_id = ar.id);"
  tab.map!(&:flatten)
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 rock artists
end

# SELECT *
# FROM A
# INNER JOIN B ON A.key = B.key