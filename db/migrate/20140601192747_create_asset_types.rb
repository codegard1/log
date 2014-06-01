class CreateAssetTypes < ActiveRecord::Migration
  def change
    create_table :asset_types do |t|
      t.string :title
      t.string :group

      t.timestamps
    end
  end
end
