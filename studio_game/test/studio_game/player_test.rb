require "minitest/autorun"
require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new("finn", 60)
  end
  
  def test_has_a_capitalized_name
    assert_equal "Finn", @player.name
  end

  def test_has_an_initial_health
    assert_equal 60, @player.health
  end

  def test_computes_a_score_as_the_sum_of_its_health_and_length_name
    assert_equal 64, @player.score
  end

  def test_has_a_string_representation
    assert_equal "I'm Finn with a health of 60 and a score of 64", @player.to_s
  end

  def test_increases_health_by_15_when_boosted
    @player.boost
    assert_equal 75, @player.health
  end

  def test_decreases_health_by_10_when_drained
    @player.drain
    assert_equal 50, @player.health
  end

end