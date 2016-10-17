def bubble_sort(list)
	return list if list.length <= 1
	
	swapped = true
	while swapped
		swapped = false
		(0..list.length-2).each do |i|
			if list[i] > list[i+1]
				list[i], list[i+1] = list[i+1], list[i]
				swapped = true
			end
		end
	end
	return list
end