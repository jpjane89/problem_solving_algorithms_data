class Stack
	def initialize
		@items = []
	end

	def is_empty?
		return @items == []
	end

	def push(item)
		@items.push(item)
	end

	def pop
		return @items.pop
	end

	def peek
		return @items[-1]
	end

	def size
		return @items.length
	end
end
