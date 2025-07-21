class Player
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

  def to_s
    "I'm #{@name} with a health of #{@health}"
  end
end

player_1 = Player.new("finn", 60)
puts player_1.inspect
puts player_1
player_1.drain
puts player_1
player_1.boost
puts player_1
