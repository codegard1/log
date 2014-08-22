class AddTaskListRefToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :tasklist, index: true
  end
end
