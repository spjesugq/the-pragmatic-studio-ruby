class Movie
  attr_accessor :title
  attr_reader :rank

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def to_s = "#{@title} has a rank of #{@rank}"
end

class Playlist
  attr_reader :name, :movies

  def initialize(name)
    puts self.inspect
    @name = name
    puts self.inspect
    @movies = []
    puts self.inspect
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "*" * 30
    puts "#{@name}'s playlist:"

    puts "\nBefore watching:"
    puts @movies
    
    puts ""
    @movies.each do |movie|
      case roll_die
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a 👎"
      when 3..4
        puts "#{movie.title} got skipped"
      else
        movie.thumbs_up
        puts "#{movie.title} got a 👍"
      end
    end

    puts "\nAfter watching:"
    puts @movies
    puts ""
  end
end

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")
movie_4 = Movie.new("gremlines", 7)

playlist_1 = Playlist.new("Kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play

playlist_2 = Playlist.new("Fozzie")
playlist_2.add_movie(movie_3)
playlist_2.add_movie(movie_4)
playlist_2.play
