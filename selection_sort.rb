def selection_sort(list)
	(0..list.length-2).each do |i|
		min = i
		(i+1...list.length).each do |j|
			min = j if list[j] < list[min]
		end
		list[i], list[min] = list[min], list[i]
	end
	list
end