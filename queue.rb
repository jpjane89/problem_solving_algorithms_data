class Queue
	def initialize
		@items = []
	end

	def is_empty?
		return @items == []
	end

	def enqueue(item)
		@items.unshift(item)
	end

	def dequeue
		@items.pop
	end

	def size
		return @items.length
	end
end
