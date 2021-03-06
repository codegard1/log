class Move < ActiveRecord::Base
  belongs_to :user
  belongs_to :move_type
  belongs_to :asset
  
  validates :user_id, presence: true
  #validates :move_type_id, presence: true
  # validates :asset_id, presence: true, numericality:  {only_integer: true}
  validates :description, presence: true, length: {in: 1..120}
end
