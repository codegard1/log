class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :complete
      t.datetime :completed_on
t.references :user, index: true

      t.timestamps
    end
  end
end
