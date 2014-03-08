require './lib/airport.rb'

describe Airport do

	it "should grant permission to plane for landing" do 
		plane = Plane.new
		airport = Airport.new		
		expect(airport.accept?(plane)).to be_true
	end

	it "should grant permission to plane for take-off" do
		plane = Plane.new
		airport = Airport.new
		expect(airport.release?(plane)).to be_true
	end

	it "should know when the weather is stormy or sunny" do
		plane = Plane.new
		airport = Airport.new
		# using double and stubbing to stop the random return of the weather:
		weather = double("weather", :weather_report => @stormy = false)
		expect(weather.weather_report(plane)).to be_false
	end


	it "should not grant permission for landing if stormy weather" do
		plane = Plane.new
		airport = Airport.new
		airport.storm
		expect(airport.accept?(plane)).to be_false
	end

	it "should not grant permission for take-off if stormy weather" do
		plane = Plane.new
		airport = Airport.new
		airport.storm
		expect(airport.release?(plane)).to be_false
	end



end

