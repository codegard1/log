class User < ActiveRecord::Base
	has_many :assets
	has_many :moves
	has_many :tasks
	has_many :task_lists
end
