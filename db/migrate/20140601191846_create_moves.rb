class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.text :description
      t.references :user, index: true
      t.references :move_type, index: true
      t.references :asset, index: true

      t.timestamps
    end
  end
end
