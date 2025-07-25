# snacks_eaten = {}
snacks_eaten = Hash.new(0)

snacks_eaten["popcorn"] = 3
snacks_eaten["candy"] = 1
snacks_eaten["popcorn"] += 3

snacks_eaten["nachos"] += 4

puts snacks_eaten
