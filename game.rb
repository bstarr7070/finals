# require 'battle.rb'
require_relative 'classes'

puts "what is your name"

name = gets

puts "hello " + name

puts "what is your class"
puts "1 - warrior"
puts "2 - rogue"
puts "3 - mage"

classanswer = gets.to_i

if classanswer == 1 
  puts "welcome hero #{name} you are now a warrior"
  name = Warrior.new(1250, 100, 50,["power strike", "double attack", "shield bash"])
elsif classanswer == 2
  puts "welcome hero #{name} you are now a rogue"
  name = Rogue.new(1000, 75, 75,["backstab", "steal", "hamstring"])
elsif classanswer == 3
  puts"welcome hero #{name} you are now a mage"
  name = Mage.new(750, 50, 100,["fireball", "summon spirit", "ice blast"])
else
  puts "invalid input"
end
puts name.stats
puts name.skills

puts "you are in town where do you want to go"
puts "1 - cave"
puts "2 - forest"
puts "3 - mountain"
puts "4 - dungeon"
