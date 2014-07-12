require './lib/weather'

DEFAULT_CAPACITY= 6

	class Airport

		include Weather
		
		def initialize (custom_capacity={})
			@parking_lot = []
			@capacity = custom_capacity.fetch(:custom_capacity,DEFAULT_CAPACITY)
		end

		def parking_lot
			@parking_lot
		end

		def capacity
			@capacity
		end

		def land(plane)
			clear_parking_lot if full?
			@parking_lot << plane
		end

		def full?
			parking_lot.count == capacity
		end
		
		def clear_parking_lot
				parking_lot.each do|plane| plane.depart_from(self)end
					parking_lot.clear			
		end
		
	end