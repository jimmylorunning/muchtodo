class Todo < ActiveRecord::Base

	def self.tasks_to_do
		self.find_all_by_status('to do', order: 'priority')
	end

=begin
	def translated_priority
		return 'woah' if (self.priority == 'high')
		self.priority
	end
=end

end
