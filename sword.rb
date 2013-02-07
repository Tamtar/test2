load 'Item.rb'
class Sword < Item

	def initialize
		@health = 0
		@armor = 0
		@attack = 3
	end

	def health
		return @health
	end
	def armor
		return @armor
	end
	def attack
		return @attack
	end
end