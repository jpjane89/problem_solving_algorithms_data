class Vertex
	attr_accessor :id

	def initialize(key)
		@id = key
		@connected_to = {}
	end

	def add_neighbor(nbr, weight=0)
		@connected_to[nbr]= weight
	end

	def to_str
		return @id.to_s + 'connected to:' + @connected_to.keys.join(",")
	end

	def get_connections
		return @connected_to.keys
	end

	def get_weight(nbr)
		return @connected_to[nbr]
	end
end
