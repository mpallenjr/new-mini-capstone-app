class Order < ApplicationRecord
  belongs_to :CartedProduct
  belongs_to :user, through: carted_products 
  belongs_to :product, through: carted_products

end
