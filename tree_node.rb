class TreeNode
	def initialize(key,val,left=nil,right=nil,parent=nil)
		@key = key
		@payload = val
		@left_child = left
		@right_child = right
		@parent = parent
	end

	def has_left_child
		return @left_child
	end

	def has_right_child
		return @right_child
	end

	def is_left_child
		return @parent and @parent.left_child == self
	end

	def is_right_child
		return @parent and @parent.right_child == self
	end

	def is_root
		return not @parent
	end

	def is_leaf
		return not (@right_child or @left_child)
	end

	def has_any_children
		return @right_child or @left_child
	end

	def has_both_children
		return @right_child and @left_child
	end

	def replace_node_data(key,value,left,right)
		@key = key
		@value = value
		@left_child = left
		@right_child = right
		@left_child.parent = self if @has_left_child
		@right_child.parent = self if @has_right_child
		@parent.left_child = self if @is_left_child
		@parent.right_child = self if @is_right_child
	end
end

