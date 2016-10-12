class Deque
	def initialize
		@items = []
	end

	def is_empty?
		return @items == []
	end

	def add_front(item)
		@items.push(item)
	end

	def add_rear(item)
		@items.unshift(item)
	end

	def remove_front
		return @items.pop
	end

	def remove_rear
		return @items.shift
	end

	def size
		return @items.length
	end
end

