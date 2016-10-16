class UnorderedList

	attr_accessor :head

	def initialize
		@head = nil
	end

	def is_empty
		return @head == nil
	end

	def add(item)
		temp = Node.new(item)
		temp.next = @head
		@head = temp
	end

	def size
		current = @head
		count = 0
		while current != nil
			count += 1
			current = current.next
		end
		return count
	end

	def search(item)
		current = @head
		found = false
		while current != nil and not found
			if current.data == item
				found = true
			else
				current = current.next
			end
		end
		return found
	end

	def remove(item)
		current = @head
		previous = nil
		found = false
		while !current.nil? and not found
			if current.data == item
				found = true
			else
				previous = current
				current = current.next
			end
		end

		if previous.nil?
			@head = current.next
		else
			previous.next = current.next
		end
	end

	def remove_duplicates
		already_seen = []
		current_node = @head
		previous = nil

		while !current_node.nil?
			if current_node == @head
				already_seen.push(current_node.data)
				previous = current_node
				current_node = current_node.next
			elsif !already_seen.include? current_node.data
				already_seen.push(current_node.data)
				previous = current_node
				current_node = current_node.next
			elsif already_seen.include? current_node.data
				previous.next = current_node.next
				current_node = current_node.next
			end
		end
	end

	def append(item)
		new_node = Node.new(item)
		current = @head
		while !current.next.nil?
			current = current.next
		end
		current.next = new_node
	end

	def insert(item, position)
		new_node = Node.new(item)
		previous = nil
		current = @head
		current_position = 0

		while current_position != position
			previous = current
			current = current.next
			current_position += 1
		end

		if previous == nil
			new_node.next = current
			@head = new_node
		else
			new_node.next = current
			previous.next = new_node
		end
	end

	def index(item)
		current = @head
		current_position = 0

		while !current.nil?
			if current.data == item
				return current_position
			else
				current = current.next
				current_position += 1
			end
		end
		return nil
	end

	def pop
		current = @head
		previous = nil

		while !current.next.nil?
			previous = current
			current = current.next
		end

		previous.next = nil
		return current.data
	end
end
