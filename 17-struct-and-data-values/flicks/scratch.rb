# class Snack
#   attr_accessor :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# end
# 

# Snack = Struct.new(:name, :price)
Snack = Data.define(:name, :price)

snacks = [
  Snack.new("popcorn", 3),
  Snack.new("candy", 1),
  Snack.new("nachos", 4),
  Snack.new("pretzels", 2),
]

puts snacks.sample
