class Map
	@x
	@y
	@grid
	def initialize
		@x = 20
		@y = 20
    @grid = Hash.new(false)
	end
	def dimensions
		return [@x, @y]
	end
	def set_rewards

		puts @grid[0]

		@grid[[5, 7]] = true
		return true

	end
	def reward?(x, y)
		if @grid[[x, y]] == true
			return true
		else
			return false
		end
	end

end