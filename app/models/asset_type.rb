class AssetType < ActiveRecord::Base
	has_many :assets
  validates :title, presence: true
end
