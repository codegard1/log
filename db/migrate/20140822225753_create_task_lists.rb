class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.string :title
      t.string :user
      t.timestamps
    end
    add_index :task_lists, :user
  end
end
