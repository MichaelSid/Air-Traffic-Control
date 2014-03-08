module Weather

	def selection 
    case rand(100)
      when  1...80 then "sunny"
      when 81...100 then "stormy"
    end
  end

end