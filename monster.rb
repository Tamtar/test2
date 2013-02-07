class Monster
	@health
	@attack
	@armor

	def initialize
		@health = 100
		@attack = 5
		@armor = 2
	end

	def attack(target)
		target.take_damage(@attack)
		puts "attack successful, target health: #{target.health}"
	end

	def take_damage(damage_taken)
		@health = @health - (damage_taken-@armor)
	end

	def equip(item)
		case item
		when "buckler"
			@armor = @armor + 3
		end
	end

	def health
		return @health
	end

end
