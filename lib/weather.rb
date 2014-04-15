class Weather

	def stormy?
    case rand(100)
      when  1...80 then false
      when 81...100 then true
    end
  end

end