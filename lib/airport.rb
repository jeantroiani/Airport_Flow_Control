class Airport
	def initialize (parking_lot=[])
		@parking_lot=parking_lot
	end

	def parking_lot
		@parking_lot
	end

	def land(plane)
		@parking_lot << plane
	end

	

end