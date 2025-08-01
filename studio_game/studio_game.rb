require_relative "lib/studio_game/player"
require_relative "lib/studio_game/clumsy_player"
require_relative "lib/studio_game/berserk_player"
require_relative "lib/studio_game/game"

game = Game.new("Winner Takes All")
players_file = File.join(__dir__, "players.csv")
game.load_players(ARGV.shift || players_file)

klutz = ClumsyPlayer.new("klutz", 105, 3)
game.add_player(klutz)

berserker = BerserkPlayer.new("berserker", 50)
game.add_player(berserker)

loop do
  puts "How many game rounds? ('quit' to 'exit')"
  answer = gets.chomp
  
  case answer
  when /^\d+$/
    game.play(answer.to_i)
  when "quit", "exit"
    break
  else
    puts "Please enter a number, 'quit' or 'exit"
  end
  puts ""
end
game.print_stats
game.save_high_scores
