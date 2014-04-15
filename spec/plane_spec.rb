
require './lib/plane'

describe Plane do 

	it "should be flying high in the air after creation" do
		plane = Plane.new
		expect(plane.grounded?).to be_false
	end

	it "should have a status showing it is grounded" do
		plane = Plane.new
		plane.landed
		expect(plane.grounded?).to be_true
	end

	it "should have a status showing it is flying high" do
		plane = Plane.new
		plane.landed
		expect(plane.grounded?).to be_true
		plane.flying
		expect(plane.grounded?).to be_false
	end



end
