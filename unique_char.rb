def unique_char(string)
	char_hash = {}
	string.each_char do |char|
		char_hash[char] = char_hash.fetch(char, 0) + 1
	end

	more_than_1 = char_hash.values.select do |value|
		value > 1
	end

	if more_than_1.empty? 
		return true
	else
		return false
	end
end

