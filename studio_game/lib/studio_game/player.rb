class Player
  attr_accessor :name, :found_treasures
  attr_reader :health

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end

  def score
    @health + points
  end

  def points
    @found_treasures.values.sum
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, and score of #{score}"
  end
end

if __FILE__ == $0
  player = Player.new("jase")
  puts player.name
  puts player.health
  player.boost
  puts player.health
  player.drain
  puts player.health
end
