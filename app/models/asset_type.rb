class AssetType < ActiveRecord::Base
  has_many :assets
  has_many :moves, through: :assets

  validates :title, presence: true, length: {in: 1..64}

  self.per_page = 10
end

