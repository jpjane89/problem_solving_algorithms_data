def highest_product(array_of_ints)
	outcomes = []
	(0...array_of_ints.length).each do |i|
		(i+1...array_of_ints.length).each do |j|
			(j+1...array_of_ints.length).each do |k|
				product = array_of_ints[i]* array_of_ints[j] * array_of_ints[k]
				outcomes.push(product)
			end
		end
	end
	return outcomes.max
end