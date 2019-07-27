class Item < ApplicationRecord
  belongs_to :restaurant

  has_many :current_orders
  has_many :orders, through: :current_orders

  mount_uploader :image, PhotoUploader

end
