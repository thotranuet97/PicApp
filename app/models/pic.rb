class Pic < ApplicationRecord
	mount_uploader :picture, PictureUploader
	has_many :hashtags
	has_many :comments
	
    belongs_to :album, optional: true
	belongs_to :user, optional: true
end
