class Todo < ActiveRecord::Base

	attr_accessible :task, :priority, :status, :date_done

	PRIORITIES = ["high", "medium", "low"]
	STATUSES = ["to do", "done"]

	def self.tasks_to_do
		self.where(:status => STATUSES.index('to do')).order(:priority)
	end

	def self.tasks_done
		self.where(:status => STATUSES.index('done')).order(date_done: :desc).limit(5)
	end

	def update_attributes(params)
    if ((params[:status] == 'done') && (!self.done?))
      params[:date_done] = DateTime.now
    end
		super
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

	def done?
		self.status == 'done' && !self.date_done.nil?
	end

end
