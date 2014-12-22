class User < ActiveRecord::Base
  has_many :assets
  has_many :moves
  has_many :task_lists
  has_many :tasks
  #has_many :tasks, through: :task_list

  self.per_page = 10
end
