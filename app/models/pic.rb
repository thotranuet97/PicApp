class Pic < ApplicationRecord
	has_many :hashtags
	has_many :comments
	belongs_to :album
	belongs_to :user
	mount_uploader :picture, PictureUploader
end
