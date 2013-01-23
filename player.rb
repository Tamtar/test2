class Player
	@name
	@x_location
	@y_location

	def name?
		puts "what is your name?"
		@name = gets
		puts "Hello " + @name
	end
end
