class AssetType < ActiveRecord::Base
	has_many :assets
  validates :title, presence: true
end

#    create_table "asset_types", force: true do |t|
#    t.string   "title"
#    t.string   "group"
#    t.datetime "created_at"
#    t.datetime "updated_at"
#  end