class MoveType < ActiveRecord::Base
  has_many :moves

  validates :title, presence: true, length: {in: 1..32}

  self.per_page = 10
end
