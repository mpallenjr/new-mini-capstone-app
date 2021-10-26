class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :image_url, :description, :supplier_id
end
