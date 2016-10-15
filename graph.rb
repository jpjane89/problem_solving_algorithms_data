class Graph
	def initialize
		@vert_list = {}
		@num_vertices = 0
	end

	def add_vertex(key)
		@num_vertices += 1
		new_vertex = Vertex.new(key)
		@vert_list[key] = new_vertex
		return new_vertex
	end

	def get_vertex(n)
		if @vert_list.includes? n
			return @vert_list[n]
		else
			return nil
		end
	end

	def add_edge(from, to, cost=0)
		new_vertex = add_vertex(from) if not @vert_list.includes? from
		new_vertex = add_vertex(to) if not @vert_list.includes? to
		vert_list[from].add_neighbor(vert_list[to], cost)
	end

	def get_vertices
		return @vert_list.keys
	end
	
	def print_edges
		if @num_vertices == 0
			puts nil
		else
			@vert_list.values.each do |vertex|
				if vertex.get_connections
					vertex.get_connections.each do |neighbor|
						puts "hello"
					end
				end
			end
		end
	end

end


