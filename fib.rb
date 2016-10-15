def fib_no_memo(n)
	if n == 0 || n == 1
		return n
	end
	return fib_no_memo(n-1) + fib_no_memo(n-2)
end

class Fibber
	def initialize
		@memo = {}
	end

	def fib(n)
		if n < 0
			raise Exception, "index was negative"
		elsif n == 0 || n == 1
			return n
		end

		if @memo.include? n
			return @memo[n]
		end

		result = fib(n-1) + fib(n-2)

		@memo[n] = result

		return result
	end
end