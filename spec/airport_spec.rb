require 'airport'
	

	describe Airport do
		let(:airport) 		{Airport.new}

		it'is empty when created' do
			expect(airport.parking_lot).to eq []
		end
		it'can park a plane' do
			plane = double :plane
			airport.land(plane)
			expect(airport.parking_lot).to eq [plane]

		end

		xit'allows a plane to take off' do
			plane = double :plane
			airport.land(plane)
			airport.take_off(plane)
			expect(airport.parking_lot).to eq []
		end


	end