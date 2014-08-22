class RemoveUserFromTaskList < ActiveRecord::Migration
  def change
	  remove_column :task_lists, :user
  end
end
