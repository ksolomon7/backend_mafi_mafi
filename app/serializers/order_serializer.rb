class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :Cart
  has_one :Product
end
