# do
#   puts "Star Wars"
# end

# 9.times do
#   puts "Star Wars"
# end

# 9.times do |episode|
#   puts "Star Wars: Episode #{episode}"
# end

# 1.upto(9) do |episode|
#   puts "Star Wars: Episode #{episode}"
# end

1.upto(9) { |episode| puts "Star Wars: Episode #{episode}" }

10.times do
  puts "Howdy!"
end

5.upto(8) do
  puts "alligator"
end

3.downto(1) do |number|
  puts "launch in #{number}"
end

words = %w[dog zebra elephant chimpanzee]
words.each do |word|
  puts word.length
end
