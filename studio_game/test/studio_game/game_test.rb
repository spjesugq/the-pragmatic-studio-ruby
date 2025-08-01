require "minitest/autorun"
require_relative "../../lib/studio_game/player"
require_relative "../../lib/studio_game/game"

module StudioGame
  class GameTest < Minitest::Test

    def setup
      @game = Game.new("Test Me")

      @player_1 = Player.new("A", 60)
      @player_2 = Player.new("B", 75)

      $stdout = StringIO.new
    end
    
    def test_has_no_players_initially
      assert_empty @game.players
    end

    def test_players_can_be_added_to_the_game
      @game.add_player(@player_1)
      @game.add_player(@player_2)

      refute_empty @game.players
      assert_equal [@player_1, @player_2], @game.players
    end

    def test_boosts_the_player_if_a_high_number_is_rolled
      @game.add_player(@player_1)

      @game.stub(:roll_die, 6) do
        @game.play
        assert_equal 75, @game.players[0].health
      end
    end

    def test_skips_the_player_if_a_medium_number_is_rolled
      @game.add_player(@player_1)

      @game.stub(:roll_die, 4) do
        @game.play
        assert_equal 60, @game.players[0].health
      end
    end

    def test_drains_the_player_if_a_low_number_is_rolled
      @game.add_player(@player_1)

      @game.stub(:roll_die, 2) do
        @game.play
        assert_equal 50, @game.players[0].health
      end
    end

  end
end