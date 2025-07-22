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

if __FILE__ == $0
  movie = Movie.new("Star Wards", 10)
  puts movie
end
