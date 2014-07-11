class Plane

	def initialize(flying=false)
		@flying= flying
	end
	
	def flying?
		@flying
	end 

	def depart_from(airport)
		if airport.weather_condition == :sunny
			airport.parking_lot.delete self
			@flying= true
		else
			@flying = false
		end
		# airport.parking_lot.delete self unless airport.weather_stormy?
		# @flying= true
	end

	def arrive_to(airport)
		if 	airport.weather_condition == :sunny
			airport.parking_lot << self
			@flying= false
		else
				@flying = true
		end
	end

end