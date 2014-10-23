require 'sqlite3'

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  rows = db.execute "SELECT COUNT(*) FROM #{table_name};"
  return rows.join.to_i
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  result = db.execute "SELECT name FROM artists ORDER BY name ASC;"
  return result.flatten
end

def love_tracks(db)
  # TODO: return array of love songs
  tracks = db.execute "SELECT name FROM tracks WHERE name LIKE '%love%';"
  return tracks.flatten
end

def long_tracks(db, min_length)
  # TODO: return tracks verifying: duration > min_length (minutes)
  result = db.execute "SELECT name FROM tracks WHERE milliseconds > #{min_length*60000} ORDER BY milliseconds ASC;"
  return result.flatten
end
