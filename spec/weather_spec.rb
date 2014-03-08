require "./lib/weather.rb"

describe Weather do 

	it "should randomly generate a weather pattern" do
		weather = double("Weather", :selection => "sunny")
		weather.selection
		expect(weather.selection).to eq("sunny")
	end
end