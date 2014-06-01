class Asset < ActiveRecord::Base
  belongs_to :asset_type
  belongs_to :user
end
