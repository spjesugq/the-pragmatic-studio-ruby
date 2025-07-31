# File.open("movies.csv") do |file|
#   file.each_line do |line|
#     p line
#   end
# end

# File.readlines("movies.csv").each do |line|
#   p line
# end

# File.readlines("movies.csv", chomp: true).each do |line|
#   title, rank = line.split(",")
#   p title
#   p rank
# end

require_relative "lib/flicks/movie"

File.readlines("movies.csv", chomp: true).each do |line|
  title, rank = line.split(",")
  movie = Movie.new(title, rank.to_i)
  puts movie
end
