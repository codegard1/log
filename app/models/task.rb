class Task < ActiveRecord::Base
  belongs_to :tasklist
  belongs_to :user

  validates :title, presence: true, length: {in: 1..120}
  validates :tasklist_id, presence: true
  validates :user_id, presence: true

  # return the completion value of a task as "complete" or "not complete"
  def completion_aspect
    true_value = "Completed"
    false_value = "Incomplete"
    self.complete ? true_value : false_value
  end
end
