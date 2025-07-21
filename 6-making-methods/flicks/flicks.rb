# def movie_info
#   puts "Goonies has a rank of 10"
# end

# movie_info

# def movie_info
#   return "Goonies has a rank of 10"
# end

# puts movie_info

# def movie_info
#   "Goonies has a rank of 10"
#   6 + 5
# end

# puts movie_info

# def movie_info(title, rank)
#   "#{title} has a rank of #{rank}"
# end

# puts movie_info("Goonies", 10)

# def movie_info(title, rank)
#   stars = '⭐' * rank
#   "#{title} has a rank of #{rank}: #{stars}"
# end

# puts movie_info("Goonies", 10)

# def movie_info(title, rank = 5)
#   stars = '⭐' * rank
#   "#{title.capitalize} has a rank of #{rank}: #{stars}"
# end

# puts movie_info("goonies", 10)
# puts movie_info("ghostbusters", 9)
# movie_title = "goldfinger"
# puts movie_info(movie_title)

# def movie_info(title:, rank: 5)
#   stars = '⭐' * rank
#   "#{title.capitalize} has a rank of #{rank}: #{stars}"
# end

# puts movie_info(rank: 10, title: "goonies")
# puts movie_info(title: "goldfinger")

def emojis(emoji = "⭐", number)
  emoji * number
end

def movie_info(title:, rank: 5)
  "#{title.capitalize} has a rank of #{rank}: #{emojis("⭐", rank)}"
end

puts movie_info(rank: 10, title: "goonies")
puts movie_info(title: "goldfinger")
