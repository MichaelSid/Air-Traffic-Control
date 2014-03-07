
require './lib/plane'

describe Plane do 

	it "should be flying high in the air after creation" do
		flying_plane = Plane.new
		expect(flying_plane.landed?).to be_false
	end
	
end
