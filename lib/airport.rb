class Airport


	def accept?(plane)
		return false if stormy?
		true
	end

	def release?(plane)
		return false if stormy?
		true
	end

	def stormy?
		@stormy
	end

	def storm
		@stormy = true
	end

	def weather_report(plane)
    case rand(100)
      when  1...80 then @stormy = true
      when 81...100 then @stormy = false
    end
  end

end