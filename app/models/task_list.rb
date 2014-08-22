class TaskList < ActiveRecord::Base
	has_many :task
	belongs_to :user
end
