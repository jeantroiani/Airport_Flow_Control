require 'weather'

	shared_examples_for 'weather' do
		
		let(:weather) {described_class.new}

		

		it'stores a range of numbers by default' do
			puts "----------------"
			puts weather.range
		expect(weather.range).to eq((1..4))
	
		end

		# it'gives you an random number from your range' do
		# 	weather= Weather.new
		# 	allow(weather.range).to receive(:randomize) {3}
		# end

		# it'tells you if is sunny' do
		# 		weather= Weather.new

		# 		expect(weather.sunny?).to be true.if randomize
		# allow(weather).to receive(random) {3}

	end




