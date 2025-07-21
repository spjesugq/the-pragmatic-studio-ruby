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
number_rolled = rand(10)

# if number_rolled < 3
#   movie_1.thumbs_down
#   puts "#{movie_1.title} got a 👎"
# elsif number_rolled < 5
#   puts "#{movie_1.title} got skipped"
# else
#   movie_1.thumbs_up
#   puts "#{movie_1.title} got a 👍"
# end

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
