class Player
	@name
	@x_location
	@y_location
	@direction

	def initialize
		@x_location = 10
		@y_location = 10
	end

	def name?
		puts "what is your name?"
		@name = gets
		puts "Hello " + @name
	end

	def direction?
		while @direction != "done"
			puts "what direction would you like to go?"
			puts "possible choices are up, down, left, or right. Type done to end."
			@direction = gets.chop
			if @direction == "up"
				@x_location = @x_location+1
			elsif @direction == "down"
				@x_location = @x_location-1
			elsif @direction == "right"
				@y_location = @y_location+1			
			elsif @direction == "left"
				@y_location = @y_location-1
			elsif @direction == "done"
				puts "you have opted to be done"
			else
				"you can't do that"
			end
			puts "you are now at location (#{@x_location}, #{@y_location})"
		end
	end
end
