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

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

movies = [movie_1, movie_2, movie_3]

puts "\nBefore watching:"
puts movies

puts "\nAfter watching:"
movies.each do |movie|
  number_rolled = rand(10)
  case number_rolled
  when 1..2
    movie_1.thumbs_down
    puts "#{movie_1.title} got a 👎"
  when 3..4
    puts "#{movie_1.title} got skipped"
  else
    movie_1.thumbs_up
    puts "#{movie_1.title} got a 👍"
  end
end
