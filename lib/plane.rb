class Plane

	def initialize
		flying
	end 

	def grounded?
		@landed
	end

	def landed
		@landed = true
	end

	def flying
		@landed = false
	end



end