class Restaurant < ApplicationRecord
	has_many :tables
	has_many :items
end
