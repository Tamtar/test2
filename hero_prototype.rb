load 'Monster.rb'
load 'map_joel.rb'
#need help with the inventory. I want to prepopulate an inventory with a sword and a shield,
#but I don't know how to do arrays yet and google isn't really helping. Same with special attacks.
class HeroPrototype < Monster
	@inventory
	@special_attacks
	def initialize map
		@map = map
		@name = "HeroMan"
		@health = 200
		@attack = 5
		@armor = 3
		@inventory = Array.new
		@special_attacks = Array.new
		@treasure = 0
	end
	def move direction
		result = @map.go direction
		@treasure += 1 if result == :treasure
		result # retursn either nil, :treasure or :monster
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