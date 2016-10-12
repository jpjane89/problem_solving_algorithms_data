class Printer
	
	def initialize(ppm)
		@page_rate = ppm
		@current_task = nil
		@time_remaining = 0
	end

	def tick
		if @current_task != nil
				@time_remaining -= 1
				if @time_remaining <= 0
					@current_task = nil
				end
		end
	end

	def busy
		if @current_task != nil
				return true
		else
				return false
		end
	end

	def start_next(newtask)
		@current_task = newtask
		@time_remaining = newtask.get_pages * (60/@page_rate)
	end
end
