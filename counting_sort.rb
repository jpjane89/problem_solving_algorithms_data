def counting_sort(array, max_value)
	nums_to_counts = [0] * (max+value + 1)

	array.each do |item|
		nums_to_counts[item] +=1
	end

	sorted_array = []

	nums_to_counts.each_with_index do |count, value|
		(0...count).each do |time|
			sorted_array.push(value)
		end
	end

	return sorted_array
end
