load 'Item.rb'

class Monster
	@name
	@health
	@attack
	@armor

	def initialize
		@name = "Monster"
		@health = 100
		@attack = 5
		@armor = 2
	end

	def attack(target)
		target.take_damage(@attack)
		puts "#{@name} attacked successfully, #{target.name} health: #{target.health}"
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

	def name
		return @name
	end

end
