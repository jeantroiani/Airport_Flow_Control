class Plane

	def initialize(flying=false)
		@flying= flying
	end
	
	def flying?
		@flying
	end 

	def depart_from(airport)
		airport.parking_lot.delete self
		@flying= true
	end

	def arrive_to(airport)
		airport.parking_lot << self
		@flying= false
	end

end