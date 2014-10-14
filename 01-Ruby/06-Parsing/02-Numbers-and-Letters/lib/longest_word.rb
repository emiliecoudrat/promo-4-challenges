require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters

chars = 'ABCDEFGHJKLMNOPQRSTUVWXYZ'
Array.new(grid_size) { chars[rand(chars.length)].chr }

# array = []
# grid_size.times { array << [*("A".."Z")].sample }
# return array
end

# def time(start_time,end_time)
#   start_time = Time.now
#   yield
#   end_time = Time.now
#   counter = (end_time - start_time).to_f
#   return counter
# end


def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
  counter = (end_time - start_time).to_f
  return counter
end

# time do
#   gets.chomp(attempt)
# end