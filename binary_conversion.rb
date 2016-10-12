def divide_by_2(decimal_number)
	s = Stack.new

	while decimal_number > 0
		remainder = decimal_number % 2
		s.push(remainder)
		decimal_number = decimal_number / 2
	end

	bin_string = ""

	while not s.is_empty
		bin_string += s.pop.to_s
	end

	return bin_string
end


def baseConverter(decimal_number,base)
    digits = "0123456789ABCDEF"

    s = Stack.new

    while decimal_number > 0
        remainder = decimal_number % base
        s.push(remainder)
        decimal_number = decimal_number / base
    end

    newString = ""

    while not s.is_empty
        newString += digits[s.pop]
    end

    return newString
end

