class Task < ActiveRecord::Base
	belongs_to :tasklist

	# return the completion value of a task as "complete" or "not complete"
	def completion_aspect 
		true_value = "Completed"
		false_value = "Incomplete"
		if self.complete == true
			return true_value
		else
			return false_value
		end
	end
end
