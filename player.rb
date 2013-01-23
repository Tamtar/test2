class player
	@name
	@x_location
	@y_location

	def name?
		put "what is your name?"
		name = gets
		puts "Hello " + name
	end
end
