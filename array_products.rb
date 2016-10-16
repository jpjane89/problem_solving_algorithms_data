def get_products_of_all_ints_except_at_index_1(array)
	resulting_array = []
	resulting_array.push(0) if array.include? 0
	(0...array.length).each do |index|
		product = 1
		(0...array.length).each do |i|
			if index == i
				product *= 1
			else 
				product *= array[i]
			end
		end
		resulting_array.push(product) if product != 0
	end
	return resulting_array
end

def get_products_of_all_ints_except_at_index_2(int_array)

  products_of_all_ints_except_at_index = []

  # for each integer, we find the product of all the integers
  # before it, storing the total product so far each time
  product_so_far = 1
  i = 0
  while i < int_array.length
      products_of_all_ints_except_at_index[i] = product_so_far
      product_so_far *= int_array[i]
      i += 1
  end

  # for each integer, we find the product of all the integers
  # after it. since each index in products already has the
  # product of all the integers before it, now we're storing
  # the total product of all other integers
  product_so_far = 1
  i = int_array.length - 1
  while i >= 0
      products_of_all_ints_except_at_index[i] *= product_so_far
      product_so_far *= int_array[i]
      i -= 1
  end

  return products_of_all_ints_except_at_index
end

