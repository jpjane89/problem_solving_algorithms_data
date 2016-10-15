class OrderedList
	def initialize
		@head = nil
	end

	def search(item)
		current = @head
		found = false
		stop = false
		while current != nil and not found and not stop
			if current.get_data == item
				found = true
			else
				if current.get_data > item
					stop = true
				else
					current = current.get_next
				end
			end
		end

		return found
	end

	def add(item)
		current = @head
		previous = nil
		stop = false
		while current != nil and not stop
			if current.get_data > item
				stop = true
			else 
				previous = current
				current = current.get_next
			end
		end

		new_node = Node(item)

		if previous == nil
			new_node.set_next(@head)
			@head = new_node
		else
			new_node.set_next(current)
			previous.set_next=new_node
		end
	end
end

