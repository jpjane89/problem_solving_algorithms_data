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

def fibonacci(n)
	memo = []
	return _fibonacci(n,memo)
end

def _fibonacci(n, memo)
	if n < 0
		raise Exception, "index was negative"
	elsif n == 0 || n == 1
		return n
	end

	if memo.include? n
		return memo[n]
	end

	result = _fibonacci(n-1, memo) + _fibonacci(n-2,memo)

	memo[n] = result

	return result
end

def fibonacci(n)
	a = 0
	b = 1
	if n == 0
		return a
	elsif n == 1
		return b
	else
		(2..n).each do 
			c = a + b
			a = b 
			b = c
		end
	return a + b
	end
end
