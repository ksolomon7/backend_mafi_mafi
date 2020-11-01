class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :description, :price, :image
  belongs_to :category
end
