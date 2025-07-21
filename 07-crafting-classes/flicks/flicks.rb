class Movie
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

movie_1 = Movie.new("goonies", 10)
puts movie_1.inspect
puts movie_1
movie_1.thumbs_up
puts movie_1.inspect
puts movie_1

movie_2 = Movie.new("ghostbusters", 9)
puts movie_2.inspect
puts movie_2
movie_2.thumbs_down
puts movie_2.inspect
puts movie_2

movie_3 = Movie.new("goldfinger")
puts movie_3.inspect
puts movie_3

puts ""

puts 3
puts 3.to_s
puts "hello"
puts movie_1
