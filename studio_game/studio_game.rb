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
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end
end

player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", 125)
players = [player_1, player_2, player_3, player_4]
players.pop
player_5 = Player.new("cole", 75)
players.push(player_5)

puts "Before playing:"
puts players

players.each do |player|
  number_rolled = rand(1..6)
  case number_rolled
  when 1..2
    player.drain
    puts "#{player.name} got drained 😩"
  when 3..4
    puts "#{player.name} got skipped"
  else
    player.boost
    puts "#{player.name} got boosted 😁"
  end
end
puts ""

puts "After playing:"
puts players
