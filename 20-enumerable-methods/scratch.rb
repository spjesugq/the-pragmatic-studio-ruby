require_relative "lib/flicks/movie"

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")
movies = [movie_1, movie_2, movie_3]

hits = []

# movies.each do
#   if movie.rank >= 7
#     hits << movie
#   end
# end

# hits = movies.select { |movie| movie.rank >= 7 }
# flops = movies.reject { |movie| movie.rank >= 7 }

hits, flops = movies.partition { |movie| movie.rank >= 7 }

# puts hits.inspect

p hits
p flops

titles = []

# movies.each do |movie|
#   titles << movie.title
# end

titles = movies.map { |movie| movie.title }

p titles

sorted = movies.sort_by { |movie| movie.rank }.reverse

p sorted

snacks_eaten = { "nachos" => 28, "popcorn" => 18 }

p snacks_eaten.values.sum
