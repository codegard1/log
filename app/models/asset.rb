class Asset < ActiveRecord::Base
  belongs_to :asset_type
  belongs_to :user
  
  # method to return the asset tag & asset type together as a string
  def asset_tag_and_asset_type
    @@type = AssetType.where(:id => self.asset_type_id).first.title
    "#{self.asset_tag}  -  #{@@type}"
  end
  
  def 
end
