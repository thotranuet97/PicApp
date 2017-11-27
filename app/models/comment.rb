class Comment < ApplicationRecord
	belongs_to :pic
	belongs_to :album
	belongs_to :user
	validates_presence_of :user_name, :body
	mount_uploader :picture, PictureUploader

end
