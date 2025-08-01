require_relative "rankable"

module Flicks
  class Movie
    include Rankable

    attr_accessor :title, :rank
    attr_reader :snacks_eaten

    def initialize(title, rank = 5)
      @title = title.capitalize
      @rank = rank
      @snacks_eaten = Hash.new(0)
    end

    def add_snack(name, price)
      @snacks_eaten[name] += price
    end

    def total_snack_price
      @snacks_eaten.values.sum
    end

    def self.from_csv(line)
      title, rank = line.split(",")
      Movie.new(title, Integer(rank))
    rescue ArgumentError
      puts "Ignored invalid rank: #{rank}"
      Movie.new(title)
    end

    def to_csv
      "#{@title},#{@rank}"
    end

    def to_s = "#{@title} has a rank of #{@rank}"
  end

  if __FILE__ == $0
    movie = Movie.new("Star Wars", 10)
    puts movie
  end
end