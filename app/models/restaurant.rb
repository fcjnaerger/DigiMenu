class Restaurant < ApplicationRecord
	has_many :tables
	has_many :items

  mount_uploader :image, PhotoUploader

end
