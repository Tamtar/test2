load 'Monster.rb'
load 'Hero_prototype.rb'
load 'Yeti.rb'
load 'Item.rb'
load 'Buckler.rb'
load 'Sword.rb'
load 'Combat.rb'
#loading classes seems kind of bulky, especially when I need most of these classes
#in most of my classes (monster, item, etc). Is there a better way to do this?

hero_1 = Hero_prototype.new
yeti_1 = Yeti.new


buckler_1 = Buckler.new
sword_1 = Sword.new
combat = Combat.new


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