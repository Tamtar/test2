load 'Monster.rb'
load 'Hero_prototype.rb'
load 'Yeti.rb'
load 'Item.rb'
load 'Buckler.rb'
load 'Sword.rb'
load 'Combat.rb'

#loading classes seems kind of bulky, especially when I need most of these classes
#in most of my classes (monster, item, etc). Is there a better way to do this?
# YOU CAN PUT THEM ALL IN ONE FILE. DOESN'T HAVE TO BE SEPERATE FILES.
# OR PUT RELATED ONES TOGETHER.
# MAYBE UNITS.RB AND EQUIPMENT.RB OR SOMETHING LIKE THAT.
combat = Combat.new
yeti_1 = Yeti.new

buckler_1 = Buckler.new
sword_1 = Sword.new
map = Map.new
hero_1 = HeroPrototype.new map


done = false
while !done
  puts "enter n, s, e, w or a"
  input = gets.chomp
  case input
  when 's'
    result = hero_1.move(:south)
    puts "#{result} here."
    if result == :monster
      combat.battle(hero_1, yeti_1)
    end
  when 'n'
    result = hero_1.move(:north)
    puts "#{result} here."
    if result == :monster
      combat.battle(hero_1, yeti_1)
    end
  when 'e'
    result = hero_1.move(:east)
    puts "#{result} here."
    if result == :monster
      combat.battle(hero_1, yeti_1)
    end
  when 'w'
    result = hero_1.move(:west)
    puts "#{result} here."
    if result == :monster
      combat.battle(hero_1, yeti_1)
    end
  when 'a'
  else
    puts "typed in something bogus."
  end
end



player = "alive"
puts "Welcome to The Game"
puts "Input name"
name = gets.chomp
combat.battle(hero_1, yeti_1)
# while player == "alive"
# 	puts "Hello #{name}, to attack a monster type a, to equip a sword type s, to equip a buckler type b"
# 	action = gets.chomp
# 	case action
# 	when 'a'
# 		hero_1.attack(yeti_1)
# 		yeti_1.attack(hero_1)
# 	when 's'
# 		puts "You equip a sword"
# 		hero_1.equip(sword_1)
# 		yeti_1.attack(hero_1)
# 	when 'b'
# 		puts "You equip a buckler"
# 		hero_1.equip(buckler_1)
# 		yeti_1.attack(hero_1)
# 	when 'r'
# 		puts "You use reckless strike!"
# 		hero_1.reckless_strike(yeti_1)
# 		yeti_1.attack(hero_1)

# 	else
# 		"that is an invalid command"
# 	end
# 	if hero_1.health < 1
# 		puts "you die"
# 		player = "dead"
# 	elsif yeti_1.health < 1
# 		puts "you win!"
# 		player = "winner"
# 	end
# end