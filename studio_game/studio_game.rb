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
puts player_1.health
player_1.name = "alexander"
puts player_1.name
puts player_1
