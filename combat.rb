load 'Monster.rb'
load 'hero_prototype.rb'
load 'yeti.rb'
load 'Item.rb'
load 'Buckler.rb'
load 'Sword.rb'

class Combat
	def battle(player, monster)

		#what's a better way to generate items? A generate items class/method?
		#HOW BOUT MAKING EQUIPMENT A FUNCTION OF THE PLAYER. AND PASS COMBAT INTO THE PLAYER.
		#AND YEAH. HAVE A GENERATE ITEMS METHOD FOR THE PLAYER. AND/OR HAVE EQUIPMENT CLASS THAT IS PART OF PLAYER.
		buckler_1 = Buckler.new
		sword_1 = Sword.new

		status = "alive"
		while status == "alive"
			puts "To attack a monster type 'a', to view inventory type 'i', to view special abilities type 'sp' "
			action = gets.chomp
			case action
				when 'a'
					player.attack(monster)
					monster.attack(player)
				when 'i'
					puts "your inventory contains: "
					puts player.inventory
					monster.attack(player)
				when 'sp'
					puts "your special attacks are: "
					puts player.special_attacks
					monster.attack(player)
				when 's'
					puts "You equip a sword"
					player.equip(sword_1)
					monster.attack(player)
				when 'b'
					puts "You equip a buckler"
					player.equip(buckler_1)
					monster.attack(player)
				when 'r'
					puts "You use reckless strike!"
					player.reckless_strike(monster)
					monster.attack(player)
				else
					puts "that is an invalid command"
			end
			if player.health < 1
				puts "you die"
				status = "dead"
			elsif monster.health < 1
				puts "you win!"
				status = "winner"
			end
		end
	end
end
#it doesn't work if I don't have this extra end here, but I can't see what I didn't end... Help?
# THERE YA GO.
