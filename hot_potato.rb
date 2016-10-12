def hot_potato(namelist, num)
	s = Queue.new
	namelist.each do |name|
		s.enqueue(name)
	end

	while s.size > 1
		(1..num).each do |i|
			s.enqueue(s.dequeue)
		end
		s.dequeue
	end

	return s.dequeue
end
