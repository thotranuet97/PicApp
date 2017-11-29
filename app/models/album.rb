class Album < ApplicationRecord
    belongs_to :user, optional: true
	has_many :pics
	accepts_nested_attributes_for :pics
end
