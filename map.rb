class Map
	@x
	@y
	@map_dimensions
	@grid
	def initialize
		@x = 20
		@y = 20
		@map_dimensions = [@x, @y]
	end
	def dimensions
		return @map_dimensions 
	end
	def set_rewards
		@grid[5, 7] = true
	end
	def reward?(x, y)
		if @grid[x, y] == true
			return true
		else
			return false
		end
	end

end