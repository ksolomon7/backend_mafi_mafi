class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :description, :price, :image
  # has_one :Category
end
