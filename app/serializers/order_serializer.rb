class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :product_name, :product_price, :product_image, :product_category
  # belongs_to :product
end
