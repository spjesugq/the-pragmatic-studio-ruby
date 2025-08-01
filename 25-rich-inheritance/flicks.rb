require_relative "lib/flicks/movie"
require_relative "lib/flicks/movie3d"
require_relative "lib/flicks/playlist"

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")
movie_4 = Movie.new("gremlines", 7)
movie_3d = Movie3D.new("godzilla", 7, 10)

playlist_1 = Playlist.new("Kermit")
# playlist_1.add_movie(movie_1)
# playlist_1.add_movie(movie_2)
# playlist_1.add_movie(movie_3)
playlist_1.add_movie(movie_3d)

movies_file = File.join(__dir__, "movies.csv")
playlist_1.load(ARGV.shift || movies_file)

loop do
  puts "How many viewings? ('quit' to 'exit')"
  answer = gets.chomp.downcase

  case answer
  when /^\d+$/
    puts "Enjoy your #{answer} viewings..."
    playlist_1.play(answer.to_i)
  when "quit", "exit"
    break
  else
    puts "Please enter a number, 'quit' or 'exit'"
  end
end
playlist_1.print_stats
playlist_1.save

# playlist_2 = Playlist.new("Fozzie")
# playlist_2.add_movie(movie_3)
# playlist_2.add_movie(movie_4)
# playlist_2.play(20)
