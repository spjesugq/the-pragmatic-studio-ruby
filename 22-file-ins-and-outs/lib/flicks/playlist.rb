require_relative "snackbar"

class Playlist
  attr_reader :name, :movies

  def initialize(name)
    @name = name
    @movies = []
  end

  def load(from_file)
    File.readlines(from_file, chomp: true).each do |line|
      title, rank = line.split(",")
      add_movie(Movie.new(title, rank.to_i))
    end
  end

  def save(to_file = "movie_rankings.csv")
    File.open(to_file, "w") do |file|
      sorted_movies.each do |movie|
        file.puts "#{movie.title},#{movie.rank}"
      end
    end
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def sorted_movies
    @movies.sort_by { |movie| movie.rank }.reverse
  end

  def print_stats
    puts "\n#{@name}'s Playlist Stats:"
    puts "-" * 30

    puts sorted_movies

    @movies.each do |movie|
      puts "\n#{movie.title} snack totals:"
      movie.snacks_eaten do |name, total_price|
        puts "#{name}: $#{total_price}"       
      end
      puts "total: $#{movie.total_snack_price}"
    end
  end

  def play(viewings = 3)
    puts "*" * 30
    puts "#{@name}'s playlist:"

    puts "\nThe snackbar has:"
    menu_items = Snackbar.menu_items

    puts menu_items

    puts "\nBefore watching:"
    puts @movies
    
    1.upto(viewings) do |viewing_number|
      puts "\nViewing #{viewing_number}:"
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

        snack = Snackbar.random_snack
        movie.add_snack(snack.name, snack.price)
        puts "During #{movie.title}, #{@name} ate #{snack.name} for $#{snack.price}."
      end
    end

    puts "\nAfter watching:"
    puts @movies
    puts ""
  end
end
