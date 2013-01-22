class Map
	@x
	@y
	@grid
	def initialize
		@x = 20
		@y = 20
		@grid = Array.new[@x, @y]
	end
	def dimensions
		return [@x, @y] 
	end
	def set_rewards
		@grid[5, 7] = "test"
	end
	def reward?(x, y)
		puts @grid[5, 7]
		# if @grid[x, y] == true
		# 	return true
		# else
		# 	return false
		# end
	end

end