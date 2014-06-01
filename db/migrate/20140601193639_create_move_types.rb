class CreateMoveTypes < ActiveRecord::Migration
  def change
    create_table :move_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
