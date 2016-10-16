class BinarySearchTree

	attr_accessor :root, :size

	def initialize
		@root = nil
		@size = 0
	end

	def length
		return @size
	end

	def put(key,val)
		@root ? _put(key,val,@root) : @root = TreeNode(key,val)
		@size += 1
	end

	def _put(key,val,current_node)
		if key < current_node.key
			current_node.has_left_child ? _put(key,val,current_node.left_child) : current_node.left_child = TreeNode(key,val,parent=current_node)
		else
			current_node.has_right_child ? _put(key,val,current_node.right_child) : current_node.right_child = TreeNode(key,val,parent=current_node)
		end
	end

	def get(key) # depth-breadth first recursively
		if @root
			result = _get(key,@root)
			return result ? result.payload : nil
		else
			return nil
		end
	end

	def _get(key,current_node) 
		unless current_node.nil?
			return current_node if current_node.key == key
			return (key < current_node.key) ? _get(key,current_node.left_child) : _get(key,current_node.right_child)
		end
		return nil
	end

	def breadth_first_search(key)
		queue = [root]
		while !queue.empty?
			current_node = queue.shift # get first item
			return current_node if current_node.key == key
			queue.push(current_node.left_child) if !current_node.left_child.nil? # add to the end left child
			queue.push(current_node.right_child) if !current_node.right_child.nil? # add to the end right child
		end
		return nil
	end

	def depth_first_search(key)
		stack = [root]
		while !stack.empty?
			current_node = stack.pop # get last item
			return current_node if current_node.key == key
			stack.push(current_node.left_child) if !current_node.left_child.nil? # add to the end left child
			stack.push(current_node.right_child) if !current_node.right_child.nil? # add to the end right child
		end
	end

	def in_order_traverse(current_node) 
		if !current_node.nil?
			in_order_traverse(current_node.left_child)
			puts "#{current_node.key}"
			in_order_traverse(current_node.right_child)
		end
	end

    0 
 2     3
1 4   2 6

	def pre_order_traverse(current_node)
		if !current_node.nil?
			puts "#{current_node.key}"
			pre_order_traverse(current_node.left_child)
			pre_order_traverse(current_node.right_child)
		end
	end

		def post_order_traverse(current_node)
		if !current_node.nil?
			post_order_traverse(current_node.left_child)
			post_order_traverse(current_node.right_child)
			puts "#{current_node.key}"
		end
	end
end

