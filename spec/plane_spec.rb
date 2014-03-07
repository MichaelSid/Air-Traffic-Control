
require './lib/plane'

describe Plane do 

	it "should be flying high in the air after creation" do
		flying_plane = Plane.new
		expect(flying_plane.landed?).to be_false
	end

	it "should be able to land" do
		flying_plane = Plane.new
		flying_plane.land
		expect(flying_plane.landed?).to be_true
	end

	it "should be able to able to fly when it's landed" do
		flying_plane = Plane.new
		flying_plane.land
		flying_plane.fly
		expect(flying_plane.landed?).to be_false
	end

end
