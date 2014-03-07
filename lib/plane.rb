class Plane

	def initialize
		fly
	end 

	def landed?
		@landed
	end

	def land
		@landed = true
	end

	def fly
		@landed = false
	end


end