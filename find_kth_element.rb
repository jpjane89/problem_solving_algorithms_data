def find_kth_element(linked_list, k)
	pointer1 = @head
	pointer2 = @head
	count = 0

	while count < k
		pointer1 = pointer1.next
		count += 1
	end

	while !pointer1.next.nil?
		pointer1 = pointer1.next
		pointer2 = pointer2.next
	end

	return pointer2
end

