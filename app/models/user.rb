class User < ActiveRecord::Base
	has_many :assets
	has_many :moves
end
