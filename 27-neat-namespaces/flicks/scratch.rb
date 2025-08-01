module Rankable
  def thumbs_up
    @rank += 1
    puts "#{@title} got a thumbs up: #{@rank}"
  end
end

class Movie
  include Rankable

  def initialize(title, rank)
    @title = title
    @rank = rank
  end
end

class Song
  include Rankable

  def initialize(title, rank)
    @title = title
    @rank = rank
  end
end

movie = Movie.new("Goonies", 10)
song = Song.new("Ruby Baby", 10)

movie.thumbs_up
song.thumbs_up

p Movie.ancestors
p Song.ancestors

p Array.ancestors
p Hash.ancestors
