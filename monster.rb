load 'Item.rb'

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
		if damage_taken > @armor
			@health = @health - (damage_taken-@armor)
		elsif damage_taken <= @armor
			@health = @health
		end
	end

	def equip(item)
		@health = @health + item.health
		@armor = @armor + item.armor
 		@attack = @attack + item.attack
	end

	def health
		return @health
	end

end
