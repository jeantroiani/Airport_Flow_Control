require 'plane'

	describe Plane  do
		
		let(:landed_plane) 		{Plane.new									 }
		let(:flying_plane)		{Plane.new(true)						 }

		it 'has a non flying status when created' do
			expect(landed_plane.flying?).not_to be true
		end
		
		it ' can be flying' do
			expect(flying_plane.flying?).to be true
		end
	
		it 'can take off' do
			airport = double :airport, parking_lot: []
			landed_plane.depart_from(airport)
			allow(airport.parking_lot).to receive(:delete).with(self)
			expect(landed_plane.flying?).to be true
		end

		it 'can arrive' do
			airport = double :airport, parking_lot: []
			flying_plane.arrive_to(airport)
			allow(airport.parking_lot).to receive(:<<).with(self)
			expect(landed_plane.flying?).to be false

		end

		# xit'has a flying status equal to true, after taking off' do
		# 	landed_plane
		# 	airport = double :airport
		# 	allow(airport.take_off(landed_plane))
		# 	expect(landed_plane.flying).to be true
		# end


	end