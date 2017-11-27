class Album < ApplicationRecord
	belongs_to :user
	has_many :pics
	has_many :comments
end
