load 'Monster.rb'
#need help with the inventory. I want to prepopulate an inventory with a sword and a shield,
#but I don't know how to do arrays yet and google isn't really helping. Same with special attacks.
class Hero_prototype < Monster
	@inventory
	@special_attacks
	def initialize
		@name = "HeroMan"
		@health = 200
		@attack = 5
		@armor = 3
		@inventory = Array.new
		@special_attacks = Array.new
	end

	def reckless_strike(target)
		puts "@name used reckless strik successfully, #{target.name} health: #{target.health}"
		target.take_damage(@attack*2)
		take_damage(@attack)
	end

	def inventory
		# return @inventory
		return "Inventory is a future feature silly!"
	end

	def special_attacks
		# return @special_attacks
		return "the dev team was too lazy to implement special attacks trololol"
	end
end