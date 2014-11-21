class TaskList < ActiveRecord::Base
  has_many :tasks
  belongs_to :user

  validates :title, presence: true, length: {in: 1..32}
  validates :user_id, presence: true
end
