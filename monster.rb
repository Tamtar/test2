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
		# target.@health=target.@health-@attack
		puts "attack successful"
	end

end
