load 'Monster.rb'

monster_1 = Monster.new
monster_2 = Monster.new

player = "alive"
puts "Welcome to the Game"
puts "Input name"
name = gets.chomp
while player == "alive"
	puts "Hello #{name}, to attack a monster type a, to scream type s, to equip a buckler type b"
	action = gets.chomp
	case action
	when 'a'
		monster_1.attack(monster_2)
		monster_2.attack(monster_1)
	when 's'
		"You scream"
		monster_2.attack(monster_1)
	when 'b'
		monster_1.equip("buckler")
	else
		"that is an invalid command"
	end
	if monster_1.health < 1
		puts "you die"
		player = "dead"
	elsif monster_2.health < 1
		puts "you win!"
		player = "winner"
	end
end
monster_1.attack(monster_2)

$end