class Todo < ActiveRecord::Base

	attr_accessible :task, :priority, :status

	PRIORITIES = ["high", "medium", "low"]
	STATUSES = ["to do", "done"]

	def self.tasks_to_do
		self.find_all_by_status('to do', order: 'priority')
	end

	def self.priorities
		PRIORITIES
	end

	def self.statuses
		STATUSES
	end

	# http://api.rubyonrails.org/classes/ActiveRecord/Base.html#class-ActiveRecord%3a%3aBase-label-Overwriting+default+accessors

	def priority=(str_value)
		p = write_attribute(:priority, PRIORITIES.index(str_value))
		raise "Error: Invalid priority" if p.nil?
	end

	def status=(str_value)
		s = write_attribute(:status, STATUSES.index(str_value))
		raise "Error: Invalid status" if s.nil?
	end

	def priority
		PRIORITIES[read_attribute(:priority)]
	end

	def status
		STATUSES[read_attribute(:status)]
	end

end
