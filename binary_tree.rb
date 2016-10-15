def binary_tree(root)
	return [root, [],[]]
end

def insert_left(root, newbranch)
	t = root.delete_at(1)
	if t.length > 1
		root.insert(1,[newbranch,t,[]])
	else
		root.insert(1,[newbranch,[],[]])
	end
	return root
end

def insert_right(root, newbranch)
	t = root.delete_at(2)
	if t.length > 1
		root.insert(2,[newbranch,t,[]])
	else
		root.insert(2,[newbranch,[],[]])
	end
	return root
end

def get_root_val(root)
	return root[0]
end

def set_root_val(root, newval)
	root[0] = newval
end

def get_left_child(root)
	return root[1]
end

def get_right_child(root)
	return root[2]
end

