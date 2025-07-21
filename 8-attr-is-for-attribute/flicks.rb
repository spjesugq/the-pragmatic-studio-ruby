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
movie_1.title = "goonies"
puts movie_1.title
puts movie_1.rank
