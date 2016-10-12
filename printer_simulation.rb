def simulation(num_seconds, ppm)
	lab_printer = Printer.new(ppm)
	print_queue = Queue.new
	waiting_times = []

	(0...num_seconds).each do |sec|
		if new_print_task
			task = Task.new(sec)
			print_queue.enqueue(task)
		end

		if !lab_printer.busy and !print_queue.is_empty?
			next_task = print_queue.dequeue
			waiting_times.push(next_task.wait_time(sec))
			lab_printer.start_next(next_task)
		end

		lab_printer.tick
	end

	average_wait = waiting_times.reduce(:+)/waiting_times.length
	puts "Average wait #{average_wait} secs, #{print_queue.size} tasks remaining"
end

def new_print_task
	num = Random.new.rand(1..180)
	if num == 180
		return true
	else
		return false
	end
end
