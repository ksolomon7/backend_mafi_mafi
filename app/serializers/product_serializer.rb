class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :description, :price, :image, :item_category
  # belongs_to :category
end
