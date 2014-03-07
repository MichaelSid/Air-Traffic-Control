
require './lib/plane'

describe Plane do 

	it "should be flying high in the air after creation" do
		plane = Plane.new
		expect(plane.landed?).to be_false
	end



end
