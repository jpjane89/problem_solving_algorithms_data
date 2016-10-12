class Task
	def initialize(time)
		@timestamp = time
		@pages = Random.new.rand(1..20)
	end

	def get_stamp
		return @timestamp
	end

	def get_pages
		return @pages
	end

	def wait_time(currenttime)
		return currenttime - @timestamp
	end
end