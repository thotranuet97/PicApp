class Tag < ApplicationRecord
<<<<<<< HEAD
=======
	has_many :taggings
	has_many :pics, through: :taggings

>>>>>>> 2a7907e4534f75a031a124aaa23e209984bdd525
end
