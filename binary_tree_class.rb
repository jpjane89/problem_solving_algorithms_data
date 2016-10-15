class BinaryTree
	attr_accessor :left_child, :right_child, :keys

	def initialize(root)
		@key = root
		@left_child = nil
		@right_child = nil
	end

	def insert_left(newnode)
		if @left_child == nil
			@left_child = BinaryTree(newnode)
		else
			t = BinaryTree(newnode)
			t.left_child=@left_child
			@left_child = t
		end
	end

	def insert_right(newnode)
		if @right_child == nil
			@right_child = BinaryTree(newnode)
		else
			t = BinaryTree(newnode)
			t.right_child=@right_child
			@right_child = t
		end
	end
end


