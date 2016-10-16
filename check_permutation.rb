def check_permutation(string1, string2)
	if string1 > string2
		longer = string1
		shorter = string2
	else
		shorter = string1
		longer = string2
	end

	matches = false
	
	shorter.each_char do |char|
		if longer.include? char
			matches = true
		else
			matches = false
			break
		end
	end

	return matches
end

