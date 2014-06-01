class Move < ActiveRecord::Base
  belongs_to :user
  belongs_to :move_type
  belongs_to :asset
end
