class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :description, :supplier_id
  has_many :images
  belongs_to :supplier 
end
