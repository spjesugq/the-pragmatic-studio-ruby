class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 20
  end

  def score
    @health + @name.length
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{@score}"
  end
end

player_1 = Player.new("finn", 60)
number_rolled = rand(1..6)

case number_rolled
when 1..2
  player_1.drain
  puts "#{player_1.name} got drained 😩"
when 3..4
  puts "#{player_1.name} got skipped"
else
  player_1.boost
  puts "#{player_1.name} got boosted 😁"
end
