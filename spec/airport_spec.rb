require 'airport'
require "./spec/weather_spec"

	describe Airport do
		let(:airport) 		{Airport.new}

		before(:each) do
			allow(airport).to receive(:weather_stormy?).and_return(false)
		end

		it'is empty when created' do
			expect(airport.parking_lot).to eq []
		end

		it'can park a plane' do
			plane = double :plane
			airport.land(plane)
			expect(airport.parking_lot).to eq [plane]

		end
		it'has a range of numbers' do
			expect(range).to eq (1..5)
		end

		xit'knows how is the weather' do
			weather = double :weather, condition: :sunny
			expect(we)
			expect(weather_condition).to eq(:sunny)
			
		end


	end