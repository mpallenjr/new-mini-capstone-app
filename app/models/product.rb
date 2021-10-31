class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :users
  has_many :orders
  

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true



  def is_discounted?
    price < 10
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    total = tax + price
    return total

  end

end
