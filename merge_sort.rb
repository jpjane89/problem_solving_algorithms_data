def merge_sort(array)
	if array.length < 2
		return array
	end

	middle = array.length / 2
	left = array[0...middle]
	right = array[middle..-1]

	sorted_left = merge_sort(left)
	sorted_right = merge_sort(right)

	sorted_array = []

 # while left is not empty or right is not empty
 # if left is not empty and right is empty OR the first element of left is less than first element of right
 ### then add the first element of the left to the sorted array
 # if left is empty and right is not empty OR the first element of right is more than first element of left
 ### then add the first element of the right to the sorted array
 
	while !sorted_left.empty? || !sorted_right.empty? do 
		if !sorted_left.empty? && (sorted_right.empty? || sorted_left[0] < sorted_right[0])
			sorted_array.push(sorted_left.shift)
		else 
			sorted_array.push(sorted_right.shift)
		end
	end		
	return sorted_array
end