require_relative "snackbar"

class Playlist
  attr_reader :name, :movies

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play(viewings = 3)
    puts "*" * 30
    puts "#{@name}'s playlist:"

    puts "\nThe snackbar has:"
    Snackbar::SNACKS.each do |snack|
      puts "#{snack.name} for $#{snack.price}"
    end

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
