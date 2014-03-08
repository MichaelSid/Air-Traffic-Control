class Plane

	def initialize
		@landed = false
	end 

	def landed?
		@landed
	end

	def grounded
		@landed = true
	end

	def flying
		@landed = false
	end



end