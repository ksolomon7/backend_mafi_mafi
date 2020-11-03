class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :product_name, :product_price, :product_image
  # belongs_to :product
end
