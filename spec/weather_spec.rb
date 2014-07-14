require 'weather'

	shared_examples_for 'weather' do
		
		let(:weather) {described_class.new}

		

		it'stores a range of numbers by default' do
		puts weather.range
		expect(weather.range).to eq((1..4))
	
		end



	end




