module Weather
	
	def range(range=(1..5))
		@range=range
	end
	

	# def randomize
	# 	rand(range)
	# end

	# def condition
	# :sunny
	# end

	def	weather_stormy?
		[true, false].sample
	end

end
