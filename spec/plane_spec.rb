require './lib/plane'

	describe Plane do

	
		
		let(:landed_plane) 		{Plane.new									 }
		let(:flying_plane)		{Plane.new(true)						 }

		it 'has a non flying status when created' do
			expect(landed_plane.flying?).not_to be true
		end
		
		it ' can be flying' do
			expect(flying_plane.flying?).to be true
		end
	
		it 'can take off' do
			airport = double :airport, parking_lot: [], weather: true
			landed_plane.depart_from(airport)
			allow(airport.parking_lot).to receive(:delete).with(self)
			expect(landed_plane.flying?).to be true
		end

		it 'can arrive' do
			airport = double :airport, parking_lot: [], weather: true
			flying_plane.arrive_to(airport)
			allow(airport.parking_lot).to receive(:<<).with(self)
			expect(landed_plane.flying?).to be false

		end
		
		it'cannot depart if the weather is bad' do
			weather = double :weather
			airport = double :airport, weather: false
			landed_plane.depart_from(airport)
			expect(landed_plane.flying?).to be false
		end

		it'cannot arrive if the weather is bad' do
			weather = double :weather
			airport = double :airport, weather: false
			flying_plane.arrive_to(airport)
			expect(flying_plane.flying?).to be true
		end
					


	end