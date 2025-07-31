module Snackbar
  Snack = Data.define(:name, :price)
    
  SNACKS = [
    Snack.new("popcorn", 3),
    Snack.new("candy", 1),
    Snack.new("nachos", 4),
    Snack.new("pretzels", 2),
  ]

  def self.random_snack
    SNACKS.sample
  end

  def self.menu_items
    SNACKS.map { |snack| "#{snack.name} for $#{snack.price}" }
  end
end