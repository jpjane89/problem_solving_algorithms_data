def palindrome_permutation?(string)
	string.gsub!(/\s/, "").downcase!
	char_hash = {}

	string.each_char do |char|
		char_hash[char] = char_hash.fetch(char, 0) + 1
	end
	
	if string.length % 2 == 0
		char_hash.keys.each do |char|
			return false if char_hash[char] % 2 != 0 
		end
	else
		even = 0
		odd = 0
		char_hash.keys.each do |char|
			if char_hash[char] % 2 == 0 
				even += 1
			else
				odd += 1
			end
		end
		return false if (char_hash.keys.length - 1 != even) || (odd != 1)
	end
	return true
end
