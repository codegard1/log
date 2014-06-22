class AddAssetTagToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :asset_tag, :string
    add_index :assets, :asset_tag
  end
end
