class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :table

  has_many :current_orders
  has_many :items, through: :current_orders
end
