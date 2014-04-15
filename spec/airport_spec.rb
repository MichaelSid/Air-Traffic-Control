require './lib/airport.rb'

describe Airport do

	let(:airport) {Airport.new(weather)}
	let(:plane) {Plane.new}
	let(:weather) {weather = double("weather")}

	context "good enough weather to land and take off" do
		before(:each) do
			weather.stub(:stormy?).and_return(false)
			expect(weather.stormy?).to be_false
		end

	it "should have a max capacity of 20" do
		expect(airport.capacity).to eq(20)
	end

	it "should know when it's full" do
		20.times{airport.accept_plane(plane)}
		expect(airport.plane_count).to eq(20)
		expect(airport).to be_full
	end

	it "should not allow plane if airport is full" do
		20.times{airport.accept_plane(plane)}
		lambda {airport.accept_plane(plane)}.should raise_error("we are full, sorry!")
	end


	it "should grant permission to plane for landing" do 
		expect(airport.plane_count).to eq(0)
		airport.accept?(plane)	
		expect(airport.plane_count).to eq(1)
	end

	it "should grant permission to plane for take-off" do
		airport.accept?(plane)	
		expect(airport.plane_count).to eq(1)
		airport.release?(plane)
		expect(airport.plane_count).to eq(0)
	end
	
	end

	context "#stormy weather" do
		before(:each) do
			weather.stub(:stormy?).and_return(true)
			expect(weather.stormy?).to be_true
		end

	# it "should know when the weather is stormy or sunny" do
	# 	# using double and stubbing to stop the random return of the weather:
	# 	weather = double("weather", :weather_report => @stormy = false)
	# 	expect(weather.weather_report(plane)).to be_false
	# end

	it "should not allow planes to land in stormy weather" do 
    lambda {airport.accept?(plane)}.should raise_error("wait until the skies clear, m'dear!")
	end

	it "should not allow planes to take off in stormy weather" do 
		lambda {airport.release?(plane)}.should raise_error("wait until the skies clear, m'dear!")
	end

	end

end

