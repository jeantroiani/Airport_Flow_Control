module Weather
	
	def randomize
		rand(5)
	end

	def weather
	 if randomize > 1
	 	 	puts "allowed to continue"
	 	 	return true
		else 
			puts "abort manoeuvrer, the weather is not helping."
			false
		end
	end

end
