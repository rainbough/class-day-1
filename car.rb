class Car
	
	def initialize()
		@fuel = 10.0
		@distance = 0.0
		puts "the initialize method is running automatically."
	end
	def get_info()
		"I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons of gas."
	end
	def drive(miles)
		
		fuel_used = miles / 20.0
		
		if @fuel < fuel_used
			puts "You do not have enough fuel to drive that far."
		else
			@fuel = @fuel - fuel_used
			@distance = @distance + miles
		end
		def fuel_up
			fuel_needed = 10.0 - @fuel
			fuel_cost = 3.50 * fuel_needed
			puts "you just added #{fuel_needed} gallons to your tank at a cost of $#{fuel_cost}."
			@fuel = 10.0
		end


	end



end