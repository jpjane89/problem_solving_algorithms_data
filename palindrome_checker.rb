def palindrome_checker(string)
	d = Deque.new

	string.split('').each do |i|
		d.add_rear(i)
	end

	still_equal = true

	while d.size > 1 and still_equal
		first = d.remove_front
		last = d.remove_rear
		still_equal = false if first != last
	end

	return still_equal
end



