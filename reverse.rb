def reverse(string)
	if string.length == 1 
		return string
	else
		return string[-1] + reverse(string[0..-2])
	end
end
