require_relative 'lib/Animal.rb'
require_relative 'lib/Zoo.rb'
require 'pry'


a1 = Animal.new("cat", 4, "fluffy")
a2 = Animal.new("cat", 5, "snuffles")
a3 = Animal.new("bear", 50, "bobo")

z1 = Zoo.new("Chicago", "Lincoln Park Zoo")
a1.zoo = z1
a2.zoo = z1
a3.zoo = z1

binding.pry
puts "boo"
