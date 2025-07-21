emoji = "🚀"
puts emoji * 25

puts "\nLet's play a game!\n\n\t3\n\t2\n\t1\n\n"

# name = "finn"
# health = 60

# puts "#{name.capitalize}'s health is #{health}"

def say_hello(name:, health: 100)
  "I'm #{name} with a health of #{health}"
end

puts say_hello(name: "finn", health: 60)
puts say_hello(name: "lucy", health: 90)
puts say_hello(name: "jase")
puts say_hello(health: 125, name: "alex")
