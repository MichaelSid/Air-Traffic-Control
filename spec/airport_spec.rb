require './lib/airport.rb'

describe Airport do

	it "should grant permission to plane for landing" do 
		plane = Plane.new
		airport = Airport.new
		airport.accept?(plane)
		expect(airport.accept?(plane)).to be_true
	end

	it "should grant permission to plane for take-off" do
		plane = Plane.new
		airport = Airport.new
		airport.release?(plane)
		expect(airport.release?(plane)).to be_true
	end

	it "should know when the weather is stormy" do
	plane = Plane.new
	airport = Airport.new
	weather = double("weather")
	allow(weather).to receive(:stormy) {false}
	expect(airport.good_weather_report?).to be_false
	end


end

