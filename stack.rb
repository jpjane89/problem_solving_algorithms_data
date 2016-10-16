class Stack
	attr_accessor :minimum

	def initialize
		@items = []
		@minimum = nil
	end

	def is_empty?
		return @items == []
	end

	def push(item)
		@items.push(item)

		if @minimum.nil? || item < @minimum
			@minimum=item
		end
	end

	def pop
		@minimum = @items.min if @items.peek == @minimum
		return @items.pop
	end

	def peek
		return @items[-1]
	end

	def size
		return @items.length
	end
end
