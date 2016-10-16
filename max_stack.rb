class MaxStack
	def intialize
		@stack = Stack.new
		@maxs_stack = Stack.new
	end

	def push(item)
		@stack.push(item)
		if @maxs_stack.is_empty? || item >= @maxs.stack.peek
			@maxs_stack.push(item)
		end
	end

	def pop()
		item = @stack.pop
		if item == @maxs_stack.peek
			@maxs_stack.pop
		end
		return item
	end

	def get_max
		return @maxs_stack.peek
	end
end