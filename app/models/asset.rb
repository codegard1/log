class Asset < ActiveRecord::Base
  belongs_to :asset_type
  belongs_to :user
  has_many :moves

  validates :title, presence: true, length: {in: 1..120}
  # validates :asset_type_id, presence: true
  validates :user_id, presence: true
  # validates :asset_tag, numericality: {only_integer: true}
  
  # method to return the asset tag & asset type together as a string
  def asset_tag_and_asset_type
    @@type = AssetType.where(:id => self.asset_type_id).first.title
    "#{self.asset_tag}  -  #{@@type}"
  end
  
end
