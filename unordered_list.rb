class UnorderedList

	def initialize
		@head = nil
	end

	def is_empty
		return @head == nil
	end

	def add(item)
		temp = Node(item)
		temp.set_next(@head)
		@head = temp
	end

	def size
		current = @head
		count = 0
		while current != nil
			count += 1
			current = current.get_next
		end

		return count
	end

	def search(item)
		current = @head
		found = false
		while current != nil and not found
			if current.get_data == item
				found = true
			else
				current = current.get_next
			end
		end

		return found
	end

	def remove(item)
		current = @head
		previous = nil
		found = false
		while current != nil not found
			if current.get_data == item
				found = true
			else
				previous = current
				current = current.get_next
			end
		end

		if previous = nil
			@head = current.get_next
		else
			previous.set_next(current.get_next)
		end
	end

	def append(item)
		new_node = Node(item)
		current = @head
		while current.get_next != nil
			current = current.get_next
		end

		current.set_next(new_node)
	end

	def insert(item, position)
		new_node = Node(item)
		previous = nil
		current = @head
		current_position = 0

		while current_position != position
			previous = current
			current = current.get_next
			current_position += 1
		end

		if previous == nil
			new_node.set_next(current)
			@head = new_node
		else
			new_node.set_next(current)
			previous.set_next(new_node)
		end
	end

	def index(item)
		current = @head
		current_position = 0

		while current != nil
			if current.get_data == item
				return current_position
			else
				current = current.get_next
				current_position += 1
			end
		end

		return nil
	end

	def pop
		current = @head
		previous = nil

		while current != nil
			previous = current
			current = current.get_next
		end

		previous.set_next(nil)
		return current.get_data

	end








