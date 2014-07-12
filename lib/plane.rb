class Plane

	def initialize(flying=true)
		@flying= flying
	end
	
	def flying?
		@flying
	end 

	def depart_from(airport)
		if airport.weather == true
			airport.parking_lot.delete self
			@flying= true
		else
			@flying = false
		end
	end

	def arrive_to(airport)
		if 	airport.weather == true
			airport.parking_lot << self
			@flying= false
		else
				@flying = true
		end
	end

end