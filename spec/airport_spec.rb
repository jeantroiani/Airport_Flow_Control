require 'airport'


	describe Airport do
		let(:airport) 		{Airport.new}


		before(:each) do
			allow(airport).to receive(:weather_condition?).and_return(true)
		end

		it'is empty when created' do
			expect(airport.parking_lot).to eq []
		end

		it'has a maximum default capacity of 6' do
			expect(airport.capacity).to eq(6)

		end
		
		it'has a maximum custom capacity of 2' do
			small_airport = Airport.new(custom_capacity: 2)
			expect(small_airport.capacity).to eq(2)
		end


		it'can park a plane' do
			plane = double :plane
			airport.land(plane)
			expect(airport.parking_lot).to eq [plane]

		end
	

		it'randomize the range' do
			allow(self).to receive(:rand).with(5)
			airport.randomize
		end

		it'knows how is the weather is stormy' do
		allow(airport).to receive(:weather).and_return(false)
		expect(airport.weather).to eq false
			
		end
			it'knows how is the weather is sunny' do
		allow(airport).to receive(:weather).and_return(true)
		expect(airport.weather).to eq true
			
		end

		it'knows when it is full' do 
			first_plane = double :plane
			small_airport = Airport.new(custom_capacity: 1)
			small_airport.land(first_plane)
			expect(small_airport).to be_full

			
		end

		it'knows when is not full' do
			first_plane = double :plane
			small_airport = Airport.new(custom_capacity: 4)
			small_airport.land(first_plane)
			expect(small_airport).to_not be_full
		end

		it'gives commands to take off after the sixth plane is parked' do
			first_plane = double :plane
			second_plane = double :plane
			small_airport= Airport.new(custom_capacity: 1)
			small_airport.land(first_plane)
			expect(small_airport.parking_lot.count).to eq 1
			expect(second_plane).to receive(:arrive_to).with(small_airport)
			airport.land(second_plane)
			end

		xit' clears the airport if full' do
			first_plane = double :plane
			small_airport= Airport.new(custom_capacity: 1)
			small_airport.land(first_plane)
			expect(small_airport.parking_lot.count).to eq 1
			airport.clear_parking_lot
			expect(small_airport.parking_lot.count).to eq 0
		end

		

	end