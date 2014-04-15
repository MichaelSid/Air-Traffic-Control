require 'weather'
class Airport

attr_reader :capacity

	def initialize(weather)
		@capacity ||= 20
		@planes = []
		@weather = weather
	end

	def plane_count
		@planes.count
	end


	def accept?(plane)
		raise "we are full, sorry!" if full?
		raise "wait until the skies clear, m'dear!" if @weather.stormy?
		plane.landed
		@planes << plane
	end

	def release?(plane)
		raise "wait until the skies clear, m'dear!" if @weather.stormy? 
		plane.flying
		@planes.pop
	end

	def full?
		capacity <= plane_count
	end

end

