class CartSerializer < ActiveModel::Serializer
  attributes :id, :history
  has_many :orders
end
