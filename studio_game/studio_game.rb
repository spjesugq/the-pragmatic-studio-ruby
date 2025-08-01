require_relative "lib/studio_game/player"
require_relative "lib/studio_game/game"

game = Game.new("Guardians")
players_file = File.join(__dir__, "players.csv")
game.load_players(ARGV.shift || players_file)

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
