class CartedProduct < ApplicationRecord
  has_many :orders
  belongs_to :order, optional: true
  has_many :products, through: :product
  has_many :users, through: :user 
end
