def par_checker(string)
	s = Stack.new
	balanced = true
	index = 0
	while index < string.length and balanced
		symbol = string[index]
		if symbol == "("
			s.push(symbol)
		else
			if s.is_empty
				balanced = false
			else
				s.pop
			end
		end

		index += 1
	end

	if balanced and s.is_empty
		return true
	else
		return false
	end
end


def par_checker_with_matching(string)
	s = Stack.new()
	balanced = true
	index = 0
	while index < string.length and balanced
		symbol = string[index]
		if "([{".include? symbol
			s.push(symbol)
		else
			if s.is_empty
				balanced = false
			else
				top = s.pop
				balanced = false if !matches(top, symbol)
			end
		end
		index += 1
	end

	if balanced and s.is_empty
		return true
	else
		return false
	end
end

def matches(open, close)
	opens = "([{"
	closers = ")]}"
	return opens.index(open) == closers.index(close)
end
