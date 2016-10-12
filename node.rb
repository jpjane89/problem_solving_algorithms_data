class Node
	def initialize(data)
		@data = data
		@next = nil
	end

	def get_data
		return @data
	end

	def get_next
		return @next
	end

	def set_data(newdata)
		@data = newdata
	end

	def set_next(newnext)
		@next = newnext
	end
end
