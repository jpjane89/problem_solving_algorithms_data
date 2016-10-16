def remove_duplicates(linked_list)
	data_in_list = []
	current_node = linked_list.head
	previous = nil

	while !current_node.nil?
		if (data_in_list.empty?) || (!data_in_list.include? current_node.data)
			data_in_list.push(current_node)
			previous = current_node
			current_node = current_node.next
		elsif data_in_list.include? current_node.data
			previous.next = current_node.next
			current_node = current_node.next
		end
	end

	return linked_list
end
