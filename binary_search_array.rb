def binary_search(target, array)
	left_wall = 0
	right_wall = array.length

	while left_wall < right_wall
		length = right_wall - left_wall
		half_length = length / 2 
		guess_index = left_wall + half_length  

		guess_value = array[guess_index] 

		return true if guess_value == target

		if guess_value > target
			right_wall = guess_index 
		else
			left_wall = guess_index 
		end
	end
	return false
end


